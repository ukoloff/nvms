###
Initialize tabs engine
###
tabs = require '../tabs'

head = $('#head')[0]
radios = $ 'input', head
radios2 = []
radio = radios[0]
panes = $ 'div', $('#main')[0]

onclick = ->
  for k, v of tabs
    if (r = v.$r).checked
      v.$l.className = 'active'
      v.$d.className = ''
      r.blur()
    else
      v.$l.className = ''
      v.$d.className = 'hide'

for k, v of tabs
  radios2.unshift v.$r = rb = radios.shift()
  v.$l = rb.parentElement
  v.$d = panes.shift()

  rb.onclick = onclick

radio.click()

label = $('label', head)[0]
popup = $('div', label)[0]

label.onmouseover = ->
  popup.className = ''

label.onmouseout = ->
  popup.className = 'hide'

for a, i in $ 'a', label
  a.onclick = do (i)-> ->
    radios2[i].click()
    false
