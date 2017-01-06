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
    x = v or k
    return if res and res != x
    res = x
  res

# List all abbreviations
exports._ = ->
  list = {}
  for k, v of @z
    answer = v or k
    i = 0
    while ++i <= k.length
      if answer == @$ test = k.substring 0, i
        list[test] = answer
        break
  result = {}
  for k in (k for k of list).sort()
    result[k] = list[k]
  result
