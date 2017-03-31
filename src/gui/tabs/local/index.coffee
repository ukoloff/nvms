###
Locals tab
###
t = require './html'
tHint = require './hint.html'
ask = require '../../ask'

# Clear on hide
exports.c = 1

exports.a = (pane)->
  pane.innerHTML = t list = locals()
  showCount list
  ask.x pane, click, list
  return

exports.i = showCount = (locals)->
  exports.$i.innerHTML = tHint locals.length
  return

# Click handler
click = (i, node)->
  echo "LOCAL #{node.$[0].join '.'}[#{i}]"
