###
Journal tab
###
t = require './row.html'
tHint = require '../local/hint.html'

n = 0
container = 0

# on active
exports.a = ->
  if exports.v
    return
  d = exports.$d
  unless container
    d.innerHTML = do without -> div()
    container = d.firstChild
    d.innerHTML = ''

  exports.$i.innerHTML = tHint ++n

  container.innerHTML = t n: n
  d.appendChild z for z in container.children
  z?.scrollIntoView()
  return
