###
Semver utilities
###

module.exports =
parse = (str)->
  for z in str.split /\D+/ when z.length
    Number z

matchArray = (test, pattern, eq)->
  for z, i in pattern when z?
    return false if !eq test[i], z
  true

# Match semver array
parse.m = (value, pattern)->
  matchArray value, pattern, (a, b)->
    matchArray a, b, (a, b)->
      a==b

# Compare values
cmpv = (a, b)->
  if a == b
    0
  else if a < b
    -1
  else
    +1

# Compare Arrays
cmpa = (a, b, comparator)->
  i = 0
  la = a.length
  lb = b.length
  loop
    switch Number(i<la) + 2 * Number(i<lb)
      when 0
        return 0
      when 1
        return +1
      when 2
        return -1
      else
        if v = comparator a[i], b[i]
          return v
    i++

# Compare semver Arrays
parse.cmp =
cmp = (a, b)->
  cmpa a, b, (a, b)->
    cmpa a, b, cmpv

# Compare .$ members
parse.$ = (a, b)->
  cmp a.$, b.$
