exports.title = "Show available commands abbreviations"

exports.alias = 'abbreviations'

exports.cmd = ->
  tree = {}
  for x in cmd.all
    for name in [x.name].concat x.alias
      z = tree
      for c in name.split ''
        z = z[c] ||= {}
      z['.'] = name
  echo yaml.dump tree
