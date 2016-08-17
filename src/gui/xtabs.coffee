#
# Animate tabs
#
tabs = $ '.tabs'
.pop()

do click = ->
  for z in $ 'label', tabs
    z.className = if $ 'input', z
    .pop()
    .checked
      'active'
    else
      ''
  true

z.onclick = click for z in $ 'input', tabs
