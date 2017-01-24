###
Info tab
###
t = require './index.html'

exports.c = 1   # Clear on leave

exports.a = ->
  exports.$d.innerHTML = do require './index.html'
