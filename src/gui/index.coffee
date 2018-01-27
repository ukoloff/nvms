###
Select running application: browser or WScript?
###

if window?
  require './msie'
else
  require './routines'
  require './wsh'
