exports.title = "Show available commands abbreviations"

exports.alias = 'abbreviations'

exports.cmd = ->
  echo 'Available abbreviations:'
  tree = {}
  for x in cmd.all
    for name in [x.name].concat x.alias
      z = tree
      for c in name.split ''
        z = z[c] ||= {}
      z['!'] = x
  do shorten = (rec = tree)->
    for k, v of rec
      if '!' == k or v = shorten v
        val = v unless val?
        many = true if val != v
      else
        many = true
    return if many
    delete rec[k] for k of rec
    rec['!'] = val
  do list = (tree, prefix = '')->
    for k, v of tree
      if '!' == k
        echo "#{prefix}\t#{v.name}\t#{v.title}"
      else
        list v, prefix + k
