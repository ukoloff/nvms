#
# Animate tabs
#
tabs = $ '.tabs'
.pop()

panes = $ 'div'
.pop()

do click = ->
  for z in $ 'label', tabs
    radio =  $ 'input', z
    .pop()
    exports[radio.value] =
    pane = $ "##{radio.value}"
    .pop()
    if radio.checked
      z.className = 'active'
      pane.className = ''
    else
      z.className = ''
      pane.className = 'hide'
  true

z.onclick = click for z in $ 'input', tabs
