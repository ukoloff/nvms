echox.log = (s)->
  do init unless container
  container.innerHTML = t s
  exports.pane.appendChild x while x = container.firstChild
  return

t = without ->
  div
    class: 'zebra'
    @

t0 = without ->
  do div

container = false

init = ->
  pane = exports.pane
  pane.innerHTML = do t0
  container = pane.firstChild
  pane.innerHTML = ''
