wnd.onunload = ->
  echo 'Bye!' if DEBUG
  exit 0

css = require "../css"

style = $ 'style'
  .shift()

if style.styleSheet
  style.styleSheet.cssText = css
else
  style.innerHTML = ''
  style.appendChild dom.createTextNode css

dom.body.innerHTML = do require './body.html'
