###
Remotes tab
###
t = require './html'
tHint = require '../local/hint.html'
ask = require '../../ask'
click = require './click'

exports.a = (pane)->
  exports.a = 0
  echo s = "Building remote Node.js version tree..."
  pane.innerHTML = s
  setTimeout render

render = ->
  pane = exports.$d
  # Load remotes list without fetch (previously loaded)
  pane.innerHTML = t tree = arborize rs = remotes true
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
