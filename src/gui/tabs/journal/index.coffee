###
Journal tab
###
t = require './row.html'
tHint = require '../local/hint.html'

n = unseen = minute = container = 0

append = (ts, line)->
  pane = exports.$d

  unless container
    pane.innerHTML = do without -> div()
    container = pane.firstChild
    pane.innerHTML = ''

  container.innerHTML = t
    n: ++n
    t: ts
    $: line
  for z in container.children
    pane.appendChild z
  return

scroll = ->
  exports.$d.lastChild?.scrollIntoView()
  return

# on active
exports.a = ->
  unseen = 0
  exports.$i.innerHTML = ''
  unless exports.v
    scroll()
  return

if DEBUG
  stdout = echo._

echo._ = (line)->
  if DEBUG
    stdout line

  min = new Date now = new Date
  min.setSeconds 0, 0
  min0 = min.getTime()
  if min0 != minute
    append '', min
    minute = min0
  append "#{now.getSeconds()}.#{Math.floor now.getMilliseconds() / 100}", line

  if exports.v
    scroll()
  else if n > 1
    exports.$i.innerHTML = tHint ++unseen
  return
