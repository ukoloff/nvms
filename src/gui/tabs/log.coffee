echox.log = (s)->
  z = tmp()
  z.innerHTML = t s
  exports.pane.appendChild x while x = z.firstChild
  return

t = without (s)->
  div s

t0 = without ->
  div
    class: 'hide'

tmp = ->
  if t0
    exports.pane.innerHTML = t0()
    t0 = false
  exports.pane.firstChild

N = 0
exports.show = (s)->
  echo "Hi ##{++N}!"
