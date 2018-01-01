###
setTimeout wrapper
###

module.exports = (fn)->
  self = @
  args = arguments
  ->
    setTimeout ->
      fn.apply self, args
      return
