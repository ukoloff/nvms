###
Random string
###
module.exports = (N = 12)->
  s = ''
  s += chr() while s.length < N
  s

chr = ->
  n = Math.floor 62 * Math.random()
  String.fromCharCode n % 26 + 'Aa0'.charCodeAt n / 26
