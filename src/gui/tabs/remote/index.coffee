###
Remotes tab
###
t = require './html'
tHint = require '../local/hint.html'
ask = require '../../ask'
click = require './click'

render = ->
  unless (rs = remotes true).length
    return
  exports.$i.innerHTML = tHint rs.length
  renderList arborize rs
  return

renderList = (node, el = exports.$d)->
  el.innerHTML = t node
  i = 0
  cbs = $ 'input', el
  remotes = []
  for k, v of node
    remotes.push v.best
    do (v, cb = cbs[i++])->
      if cb.disabled
        return
      cb.onclick = ->
        defer ask
        div = cb.parentNode.parentNode.nextSibling
        if v
          renderList v.down, div
        v = 0
        k = div.className.split(/\s+/)[0]
        unless cb.checked
          k += ' hide'
        div.className = k
        return
      return
  ask.$ el, click, remotes
  return

# Build tree of versions
arborize = (list)->
  tree = {}
  for z in list by -1
    q = tree
    for n, depth in z.$[0]
      q = q[" #{n}"] ||=
        n: 0
        d: depth + 1
        best: z
        down: {}
      q.n++
      if z.dist and q.dist != 0 and q.dist != z.dist
        q.dist = if q.dist
          0
        else
          z.dist
      q = q.down
  do zebra = (tree, even = false)->
    for k, v of tree
      v._ = even
      zebra v.down, even = !even
    return
  tree

loading = 0

exports.a =
load = ->
  if loading
    return
  loading++
  fetch.versions (success)->
    loading--
    return unless success
    defer ->
      require '../info'
        .U()
      return
    do render
    exports.a = 0
    # Fetch nvm$ version too
    require('self/upgrade/sensor') ->
    return
  return

defer ->
  exports.$d.innerHTML = do require './splash.html'
  do load
  if exports.a
    do render
  return
