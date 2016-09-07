#
# GUI echo handler
#
stdout = echo.x (s)->
  ts = new Date
  v s, ts for k, v of exports
  return

if DEBUG
  exports[''] = stdout
