###
Info tab
###
t = require './index.html'

exports.c = 1   # Clear on leave

exports.a = (pane)->
  pane.innerHTML = t
    l: list = locals()
    $: junction.$
    d: dists
    sh: sh
    n: activeX "WScript.Network"
    x64: x64
    a: others.a

  require '../local'
    .i list

  for z in $ 'a', pane
    z.onclick = ->
      run @href
      false

  for z in $ 'input', pane
    z.onclick = ->
      z = @
      z = z.parentElement until 'TBODY' == z.tagName
      z.nextSibling.className = if @checked then '' else 'hide'
      @blur()

  return
