###
Function to be called later
###

module.exports = (fn)->
  self = @
  args = arguments
  ->
    defer ->
      fn.apply self, args
      return
