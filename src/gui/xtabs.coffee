#
# Animate tabs
#
all = require './tabs'

# radio.onClick handler
click = ->
  for k, v of all
    tab = v.tab
    radio = v.rb
    pane = v.pane
    if radio.disabled
      tab.className = 'hide'
      pane.className = 'hide'
    else if radio.checked
      tab.className = 'active'
      pane.className = ''
      v.show? pane
    else
      tab.className = ''
      pane.className = 'hide'
  return

# Initialize links to DOM
do ->
  tabs = $ '.tabs'
  .pop()
  tabs = $ 'label', tabs
  panes = $ '.panes'
  .pop()
  panes = $ 'div', panes
  for k, v of all
    v.rb = radio = $ 'input', v.tab = tabs.shift()
    .pop()
    v.pane = panes.shift()
    radio.onclick = click
  return

do click
