###
Run under WScript
###

t = require './index.html'
css = require '../css/minimal'

others.d =
d = (ie = msie()).Document
d.open()
d.write t css
d.close()
d.body.innerHTML = ''

others.w =
w = d.$

d.$ =
  h: wsh
  a: admin
  e: ie

w.eval argv0.load()

loop
  wsh.Sleep 100
