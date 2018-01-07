###
Info tab
###
t = require './index.html'
ask = require '../../ask'

exports.c = 1   # Clear on leave

exports.a = (pane)->
  pane.innerHTML = t
    _: active = locals.a list = locals()
    c: list.length
    p: "#{locals.f active}"
    d: dists
    sh: sh
    n: activeX "WScript.Network"
    x64: x64
    a: others.a

  # Show locals count
  require '../local'
    .i list

  # Open URLs in browser
  for z in $ 'a', pane when z.target
    z.onclick = ->
      echo "Open URL:", @href
      run @href
      false

  ask.$ pane, sure, [upgrade, bye]

  # Start accordions
  for z in $ 'input', pane
    z.onclick = ->
      z = self = @
      z = z.parentElement until 'TBODY' == z.tagName
      z.nextSibling.className = if self.checked then '' else 'hide'
      self.blur()

  return

sure = (i, fn)->
  ask
    yes: 'Go ahead!'
    no: "Nope!"
    'Are you sure:'
    (i)->
      ask()
      unless i
        do fn
      return

upgrade = ->
  echo "Would upgrade"

bye = ->
  locals.b ->
  dom.body.innerHTML = require('./bye.html') byron
  defer exit
  return
