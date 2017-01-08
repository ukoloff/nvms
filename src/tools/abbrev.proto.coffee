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
  if word of @z
    return @z[word] or word   # Exact match
  for k, v of @z when word == k.substring 0, word.length
    v ||= k
    return if res and res != v
    res = v
  res

# List all abbreviations
exports.a = (beginning)->
  begins = ->
    unless beginning
      return true
    for w in arguments by -1
      if w and beginning == w.substring 0, beginning.length
        return true
    return

  list = {}
  keys = []
  for k, v of @z when begins k, v
    v || = k
    i = 0
    while ++i <= k.length
      if v == @$ test = k.substring 0, i
        keys.push test
        list[test] = v
        break
  return unless keys.length
  result = {}
  keys.sort().reverse()
  for k in keys by -1
    result[k] = list[k]
  result
