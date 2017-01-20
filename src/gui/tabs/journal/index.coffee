###
Journal tab
###
n = 0

container = 0

t = without ->
  div class: @n & 1 and 'odd' or 'even', ->
    b @n
    text '. ', new Date

tHint = without ->
  span
    class: 'hint'
    @

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
