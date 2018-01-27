###
Locals tab
###
t = require './html'
tHint = require './hint.html'
ask = require '../../ask'
click = require './click'

# Clear on hide
exports.c = 1

# Update
defer exports.U = update = (force)->
  exports.$i.innerHTML = tHint (list = locals()).length
  unless force or exports.v
    return
  (pane = exports.$d).innerHTML = t list
  ask.$ pane, click, list.reverse().concat 0
  return

# onclick
exports.a = ->
  update true
  return
