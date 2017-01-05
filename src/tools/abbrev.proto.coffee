###
Methods of abbrev instance
###
exports.add = (options)->
  @z ?= {}
  for k, v of options
    if 'string' == typeof v
      v = [v]
    for x in v by -1
      if '$' == k
        @z[word = x] = 0  # Word
      else
        @z[x] = word      # Alias
  @

# Lookup word
exports.$ = (word)->
  return unless word and @z
  for k, v of @z
    continue unless word == k.substring 0, word.length
    x = v or k
    return x if word == k
    return if res and res != x
    res = x
  res
