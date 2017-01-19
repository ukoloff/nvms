###
Initialize tabs engine
###
tabs = require '../tabs'

head = $('#head')[0]
radios = $ 'input', head
radio = radios[0]
panes = $ 'div', $('#main')[0]
echo panes
onclick = ->
  for k, v of tabs
    if v.$r.checked
      v.$l.className = 'active'
      v.$d.className = ''
    else
      v.$l.className = ''
      v.$d.className = 'hide'

for k, v of tabs
  v.$r = rb = radios.shift()
  v.$l = rb.parentElement
  v.$d = panes.shift()

  rb.onclick = onclick

radio.click()
