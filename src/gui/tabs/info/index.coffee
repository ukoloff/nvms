###
Info tab
###
t = require './index.html'
ask = require '../../ask'
sensor = require 'self/upgrade/sensor'

exports.c = 1   # Clear on leave

exports.a = (pane)->
  pane.innerHTML = t
    _: active = locals.a list = locals()
    c: list.length
    p: "#{locals.f active}"
    d: dists
    u: up = sensor.u()
    sh: sh
    # n: activeX "WScript.Network"
    x64: x64
    a: others.a

  # Open URLs in browser
  for z in $ 'a', pane when z.target
    z.onclick = ->
      echo "Open URL:", @href
      run @href
      false

  ask.$ pane, upgrade, values(up).concat false

  # Start accordions
  for z, i in $ 'input', pane
    z.onclick = do (i)-> ->
      el = cb = @
      el = el.parentElement until 'TBODY' == el.tagName
      el.nextSibling.className = if accordionState[i] = !cb.checked then 'hide' else ''
      self.blur()
      return
    if accordionState[i]
      z.click()
  return

accordionState = []

values = (rec)->
  for k, v of rec
    v

upgrade = (i, rec)->
  unless rec
    do require './bye'
    return
  (if rec.n then require './upgrade' else require './install') rec
  return

# Refresh
exports.U = ->
  if exports.v
    exports.$r.click()
  return
