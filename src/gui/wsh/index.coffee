###
Run under WScript
###

t = require './index.html'
css = require '../css/minimal'

others.d =
d = msie().Document
d.open()
d.write t css
d.close()
d.body.innerHTML = ''

others.w =
w = d.$

d.$ = wsh

w.eval argv0.load()

loop
  wsh.Sleep 100
