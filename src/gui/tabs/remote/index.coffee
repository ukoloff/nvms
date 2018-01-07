###
Remotes tab
###
t = require './html'
tHint = require '../local/hint.html'
ask = require '../../ask'
click = require './click'

render = deferred ->
  unless (rs = remotes true).length
    return
  (pane = exports.$d).innerHTML = t tree = arborize rs
  exports.$i.innerHTML = tHint rs.length
  for cb in $ 'input', pane when not cb.disabled
    cb.onclick = ->
      div = @parentNode.parentNode.nextSibling
      k = div.className.split(/\s+/)[0]
      unless @checked
        k += ' hide'
      div.className = k
  ask.x pane, click, dearb tree
  return

# Build tree of versions
arborize = (list)->
  tree = {}
  for z in list by -1
    q = tree
    for n in z.$[0]
      q = q[" #{n}"] ||=
        n: 0
        best: z
        down: {}
      q.n++
      if z.dist and q.dist != 0 and q.dist != z.dist
        q.dist = if q.dist
          0
        else
          z.dist
      q = q.down
  tree

# Get versions array from tree
dearb = (tree)->
  result = []
  for k, v of tree
    result.push v.best, dearb(v.down)...
  result

loading = 0

exports.a =
load = ->
  if loading
    return
  loading++
  fetch.versions (success)->
    loading--
    return unless success
    do render
    exports.a = 0
    # Fetch nvm$ version too
    require('self/upgrade/sensor') ->

defer ->
  exports.$d.innerHTML = 'Loading versions info...'
  do load
  if exports.a
    do render
