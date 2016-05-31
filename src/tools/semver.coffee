#
# Semver utilities
#

# Compare values
@cmpv =
cmpv = (a, b)->
  if a == b
    0
  else if a < b
    -1
  else
    +1

# Compare Arrays
@cmpa =
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
@cmp =
cmp = (a, b)->
  cmpa a, b, (a, b)->
    cmpa a, b, cmpv

@cmpi = (a, b)->
  cmp a.id, b.id

matchArray = (test, pattern, eq)->
  for z, i in pattern when z?
    return false if !eq test[i], z
  true

# Match semver array
@match = (test, pattern)->
  matchArray test, pattern, (a, b)->
    matchArray a, b, (a, b)->
      a==b
