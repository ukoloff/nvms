#
# Random string
#
module.exports =
rnd = (N = 12)->
  s = ''
  s += char() while s.length < N
  s

rnd.char =
char = ->
  n = Math.floor 62 * Math.random()
  String.fromCharCode n % 26 + 'Aa0'.charCodeAt n / 26
