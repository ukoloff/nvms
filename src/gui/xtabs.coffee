#
# Animate tabs
#
all = require './tabs'

tabs = $ '.tabs'
.pop()

panes = $ 'div'
.pop()

do click = ->
  for z in $ 'label', tabs
    radio =  $ 'input', z
    .pop()
    tab = radio.value
    all[tab].pane =
    pane = $ "##{tab}"
    .pop()
    if radio.disabled
      z.className = 'hide'
      pane.className = 'hide'
    else if radio.checked
      z.className = 'active'
      pane.className = ''
      all[tab].show? pane
    else
      z.className = ''
      pane.className = 'hide'
  true

z.onclick = click for z in $ 'input', tabs
