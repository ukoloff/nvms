###
Hand-made abbrev with aliases
###
module.exports = (options)->
  new Abbrev options

Abbrev = (options)->
  @add options if options
  return

Abbrev:: = abbrev.proto
