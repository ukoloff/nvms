exports.active = true

exports.show = (pane)->
  pane.innerHTML = t locals()

t = without ->
  for local in @ by -1
    div
      class: 'zebra'
      local.path
