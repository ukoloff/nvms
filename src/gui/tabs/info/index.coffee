###
Info tab
###
t = require './index.html'

exports.c = 1   # Clear on leave

exports.a = (pane)->
  pane.innerHTML = t
    _: active = locals.a list = locals()
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
  for z in $ 'a', pane
    z.onclick = ->
      echo "Open URL:", @href
      run @href
      false

  # Start accordions
  for z in $ 'input', pane
    z.onclick = ->
      z = @
      z = z.parentElement until 'TBODY' == z.tagName
      z.nextSibling.className = if @checked then '' else 'hide'
      @blur()

  return
