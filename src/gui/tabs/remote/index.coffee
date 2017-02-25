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
        best: z
        down: {}
        dists: {}
      t.dists[z.dist] = 1
      t = t.down
  tree
