###
Journal tab
###
t = require './row.html'
tHint = require '../local/hint.html'

n = unseen = 0
container = 0

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

  container.innerHTML = t
    n: ++n
    $: line
  for z in container.children
    pane.appendChild z
  if exports.v
    scroll()
  else if n > 1
    exports.$i.innerHTML = tHint ++unseen
  return

scroll = ->
  exports.$d.lastChild?.scrollIntoView()
  return
