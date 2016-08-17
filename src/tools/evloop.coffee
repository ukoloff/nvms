#
# Event loop
#

module.exports =
q = []

q.start = ->
  dom.body.onunload = ->
    q.unshift ->
      exit 1

  loop
    do fn while fn = q.shift()
    wsh.Sleep 100

  return
