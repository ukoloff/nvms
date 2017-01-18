###
Hand-made abbrev with aliases
###
module.exports =
Abbrev = (words, aliases)->
  @add words, aliases
  return

Abbrev:: = abbrev.proto
