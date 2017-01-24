###
Info tab
###
t = require './index.html'

exports.c = 1   # Clear on leave

exports.a = (pane)->
  pane.innerHTML = t
    l: list = locals()

  require '../local'
    .i list
