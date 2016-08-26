#
# ES5 shims
#
Object.create ||= (proto)->
  fn = ->
  fn.prototype = proto
  new fn

Object.keys ||= (obj)->
  k for k, v of obj

Array::indexOf ||= (el)->
  for n, i in @
    return i if el == n
  -1

Array::forEach ||= (fn)->
  fn z, i, @ for z, i in @
  return

Array::filter ||= (fn)->
  z for z, i in @ when fn z, i, @
