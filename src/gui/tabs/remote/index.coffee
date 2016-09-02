tTree = require './index.html'

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
  exports.pane.innerHTML = tTree tree
