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
  for z in remotes().reverse()
    t = tree
    for n in z.id[0]
      t = t[n] ||=
        down: {}
        remotes: []
        dists: {}
      t.remotes.push z
      t.dists[z.dist] = 1
      t = t.down
  exports.pane.innerHTML = tTree tree
