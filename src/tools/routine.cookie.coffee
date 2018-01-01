###
Magic cookie for recursion
###

cookie = 0

module.exports = ->
  cookie ||= "<#{adler32 do argv0.load}>"
