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
  for a in $ 'a', pane
    a.onclick = ->
      echo @title
  return

exports.i = showCount = (locals)->
  exports.$i.innerHTML = tHint locals.length
  return
