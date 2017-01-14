###
Methods of abbrev instance
###

arr = (a)->
  return unless a
    []
  else if 'string' == typeof a
    [a]
  else
    a

exports.add = (words, aliases)->
  @z ?= {}
  for w in arr words by -1
    @z[w] = 0
  for a in arr aliases by -1
    @z[a] = w or a
  return

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
