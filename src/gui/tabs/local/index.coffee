###
Locals tab
###
t = require './html'
tHint = require './hint.html'

# Clear on hide
exports.c = 1

exports.a = (pane)->
  pane.innerHTML = t list = locals()
  showCount list
  return

exports.i = showCount = (locals)->
  exports.$i.innerHTML = tHint locals.length
  return
