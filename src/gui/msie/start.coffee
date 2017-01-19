wnd.onunload = ->
  echo 'Bye!' if DEBUG
  exit 0

t = require './body.html'
css = require "../css"
tabs = require '../tabs'

style = $ 'style'
  .shift()

if style.styleSheet
  style.styleSheet.cssText = css
else
  style.innerHTML = ''
  style.appendChild dom.createTextNode css

dom.body.innerHTML = t tabs
