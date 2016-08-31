#
# Print to stdout
#
module.exports =
echo = (args...)->
  stdout args.join ' '

stdout = (s)->
  wsh.Echo s

echo.x = (handler)->
  tmp = stdout
  stdout = handler
  tmp
