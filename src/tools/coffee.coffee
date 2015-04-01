#
#  CoffeeScript compiler itself (rarely needed)
#

module.exports = require 'coffee418/node_modules/coffee-script'

# Fix for CoffeeScript 1.9.0+
Object.create ||= (proto)->
  f = ->
  f.prototype = proto
  new f
