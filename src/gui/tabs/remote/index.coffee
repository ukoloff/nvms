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

tTree = without ->
  empty = (rec)->
    return for k of rec
    true
  do it = (tree = @, prefix = '')->
    for k, v of tree
      # WScript.Echo ">>>#{k}"
      div
        class: 'zebra'
        prefix + k
      continue if empty v.down
      do div
      div
        class: 'indent'
        -> it v.down, "#{prefix}#{k}."
