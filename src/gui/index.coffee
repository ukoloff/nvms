html = require './index.html'

dom.open()
dom.write html
  c: require './css'
  t: require './tabs'
dom.close()
