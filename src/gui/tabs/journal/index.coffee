###
Journal tab
###
t = require './row.html'
tHint = require '../local/hint.html'

n = 0
container = 0

# on active
exports.a = (pane)->
  if exports.v
    return
  unless container
    pane.innerHTML = do without -> div()
    container = pane.firstChild
    pane.innerHTML = ''

  exports.$i.innerHTML = tHint ++n

  container.innerHTML = t n: n
  pane.appendChild z for z in container.children
  z?.scrollIntoView()
  return
