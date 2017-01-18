wnd.onunload = ->
  echo 'Bye!' if DEBUG
  exit 0

dom.body.innerHTML = do require './body.html'
