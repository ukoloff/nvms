fs = require '../sys/fs'
sh = require '../sys/sh'
install2 = require './install2'

key = 'Path'
env = sh.Environment 'User'

module.exports =
path = ->
  env key
  .split ';'

#
# MS specific syntax to assign OLE properties
# Rejected by:
#   - CoffeeScript
#   - Webpack
#   - UglifyJS (?)
#
assign = new Function 'o,k,v', 'o(k)=v'

path.install = (add = true)->
  bin = fs.BuildPath install2, 'current'
  x = for x in path() when x != bin
    x
  x.unshift bin if add
  assign env, key, x = x.join ';'
