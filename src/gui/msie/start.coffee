###
Log start
###
echo "#{PACKAGE.mingzi} v#{PACKAGE.version} started"

setInterval routine.idle, 100

if DEBUG
  wnd.onerror = (msg, url, line)->
    echo "Error[#{line or '?'}]:", msg
