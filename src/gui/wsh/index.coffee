###
Run under WScript
###

others.d =
d = msie().Document
d.open()
d.write do require './index.html'
d.close()
d.body.innerHTML = ''

others.w =
w = d.$

d.$ = wsh

w.eval argv0.load()

loop
  wsh.Sleep 100
