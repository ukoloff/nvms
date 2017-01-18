###
Run in browser
###

others.h = document.$

try
  delete document.$
catch
  document.$ = others.x

require './start'
