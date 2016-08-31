#
# GUI echo handler
#
stdout = echo.x (s)->
  v s for k, v of exports
  return

if DEBUG
  exports[''] = stdout
