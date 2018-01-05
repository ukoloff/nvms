###
Locals tab
###
t = require './html'
tHint = require './hint.html'
ask = require '../../ask'
click = require './click'

# Clear on hide
exports.c = 1

exports.a = (pane)->
  pane.innerHTML = t list = locals()
  showCount list
  ask.x pane, click, list.reverse()
  return

exports.i = showCount = (locs = locals())->
  exports.$i.innerHTML = tHint locs.length
  return

# Refresh
exports.r = ->
  exports.a exports.$d
