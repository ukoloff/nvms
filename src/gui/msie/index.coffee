###
Run in browser
###

for k, v of document.$
  others[k] = v

try
  delete document.$
catch
  document.$ = others.x

require '../req'
require './render'
require './tabs'
require './start'
