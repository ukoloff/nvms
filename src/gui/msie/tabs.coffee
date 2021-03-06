###
Initialize tabs engine
###
tabs = require '../tabs'
ask = require '../ask'

head = $('#head')[0]
radios = $ 'input', head
radios2 = []
radio = radios[0]
panes = $ 'div', $('#main')[0]

onclick = ->
  defer ask           # Reset popups
  for k, v of tabs
    if checked = (r = v.$r).checked
      v.$l.className = 'active'
      v.$d.className = ''
      r.blur()
      try v.a? v.$d
    else
      v.$l.className = ''
      v.$d.className = 'hide'
      if v.c
        v.$d.innerHTML = ''
    v.v = checked
  return

for k, v of tabs
  radios2.unshift v.$r = rb = radios.shift()
  v.$l = label = rb.parentElement
  v.$d = panes.shift()
  v.$i = $ 'span', label
    .pop()
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
