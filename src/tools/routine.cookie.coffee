###
Magic cookie for recursion
###

cookie = 0

module.exports = ->
  cookie ||= "<#{adler32 do argv0.load}>"

adler32 = (s)->
  a = 1
  b = 0
  i = s.length
  while i--
    a = (a + s.charCodeAt i) % 65521
    b = (b + a) % 65521
  b << 16 + a
