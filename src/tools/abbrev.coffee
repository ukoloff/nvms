#
# Hand-made abbrev with aliases
#
module.exports =
abbrev = ()->
  unless @ instanceof abbrev
    throw SyntaxError "Use new abbrev"

proto = abbrev::

proto.add = (options)->
  @z ?= {}
  for k, v of options
    switch k
      when 'word'
        word = v
        @z[v] = 0
      when 'words'
        @z[x] = word = x for x in v
      when 'alias'
        @z[v] = word
      when 'aliases'
        @z[x] = word for x in v

proto.is = (word)->
  return unless word and @z
  for k, v of @z
    continue unless word == k.substring 0, word.length
    x = v or k
    return if res and res != x
    res = x
  res
