###
Journal tab
###
t = require './row.html'
tHint = require '../local/hint.html'

n = unseen = container = 0

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

  pane = exports.$d

  unless container
    pane.innerHTML = do without -> div()
    container = pane.firstChild
    pane.innerHTML = ''

  container.innerHTML = t line
  ch = for z in container.children
    z
  for z in ch
    pane.appendChild z

  if exports.v
    scroll()
  else if n++
    exports.$i.innerHTML = tHint ++unseen
  return
