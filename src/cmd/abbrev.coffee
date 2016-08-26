exports.title = "Show available commands abbreviations"

exports.alias = 'abbreviations'

exports.cmd = ->
  tree = {}
  for x in cmd.all
    for name in [x.name].concat x.alias
      z = tree
      for c in name.split ''
        z = z[c] ||= {}
      z['!'] = x.name
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
  echo yaml.dump tree
