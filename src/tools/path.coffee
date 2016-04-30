fs = require '../sys/fs'
sh = require '../sys/sh'
install2 = require './install2'

key = 'HKCU\\Environment\\Path'

module.exports =
path = ->
  sh.RegRead key
  .split ';'

path.install = (add = true)->
  bin = fs.BuildPath install2, 'current'
  x = for x in path() when x != bin
    x
  x.unshift bin if add
  sh.RegWrite key, x.join ';'
