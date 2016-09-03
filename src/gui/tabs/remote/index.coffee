tTree = require './html'

exports.show = ->
  delete exports.show
  evloop.push show

show = ->
  try
    echox.rem = log2 exports.pane
    echo "Listing remote Node.js versions"
    do list
  finally
    delete echox.rem

tree = {}

list = ->
  for z in remotes() by -1
    t = tree
    for n in z.id[0]
      t = t[n] ||=
        down: {}
        best: z
        dists: {}
      t.dists[z.dist] = 1
      t = t.down
  do render

render = ->
  exports.pane.innerHTML = tTree tree
  cbs = $ 'input', exports.pane
  do listen = (tree)->
    each tree, (k, v)->
      div = cb = cbs.shift()
      while div.tagName.toLowerCase() != 'div'
        div = div.parentNode
      if !cb.disabled
        cb.onclick = ->
          z = div.nextSibling
          c = z.className.split(/\s+/)[0]
          c += " " + 'hide' unless @checked
          z.className = c
      for a in $ 'a', div
        a.onclick = ->
          echo "Click #{v.best.id[0].join '.'}"
          false
      listen v.down

each = (rec, fn)->
  for k, v of rec
    fn k, v
  return
