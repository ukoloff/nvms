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
    exports[tab = radio.value] =
    pane = $ "##{tab}"
    .pop()
    if radio.checked
      z.className = 'active'
      pane.className = ''
      all[tab].show? pane
    else
      z.className = ''
      pane.className = 'hide'
  true

z.onclick = click for z in $ 'input', tabs
