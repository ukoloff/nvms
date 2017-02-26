###
Remotes tab
###
t = require './html.coffee'
tHint = require '../local/hint.html'

exports.a = (pane)->
  exports.a = 0
  # Load remotes list without fetch (previously loaded)
  pane.innerHTML = t arborize rs = remotes true
  exports.$i.innerHTML = tHint rs.length
  for cb in $ 'input', pane when not cb.disabled
    cb.onclick = ->
      div = @parentNode.parentNode.nextSibling
      k = div.className.split(/\s+/)[0]
      unless @checked
        k += ' hide'
      div.className = k

arborize = (list)->
  tree = {}
  for z in list by -1
    t = tree
    for n in z.$[0]
      t = t[" #{n}"] ||=
        n: 0
        best: z
        down: {}
      t.n++
      if z.dist and t.dist != 0 and t.dist != z.dist
        t.dist = if t.dist
          0
        else
          z.dist
      t = t.down
  tree
