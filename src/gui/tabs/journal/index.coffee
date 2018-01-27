###
Journal tab
###
t = require './row.html'
tHint = require '../local/hint.html'

n = unseen = container = 0

scroll = ->
  exports.$d.lastChild?.scrollIntoView()
  return

# Append HTML to DOM
exports.$ = append = (parent, html)->
  pane = exports.$d

  unless container
    pane.innerHTML = do without -> div()
    container = pane.firstChild
    pane.innerHTML = ''

  container.innerHTML = html
  ch = for z in container.children by -1
    z
  for z in ch by -1
    parent.appendChild z
  ch

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

  append exports.$d, t line

  if exports.v
    scroll()
  else if n++
    exports.$i.innerHTML = tHint ++unseen
  return

# Bring to top
exports.T = ->
  exports.$r.click()
