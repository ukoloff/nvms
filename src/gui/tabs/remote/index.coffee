exports.show = ->
  delete exports.show
  evloop.push show

show = ->
  try
    echox.rem = log
    echo "Listing remote Node.js versions"
    do list
  finally
    delete echox.rem

log = (s)->
  do init unless container
  container.innerHTML = t s
  exports.pane.appendChild x while x = container.firstChild
  return

list = ->
  remotes()

t = without ->
  div
    class: 'zebra'
    @

t0 = without ->
  do div

container = false

init = ->
  pane = exports.pane
  pane.innerHTML = do t0
  container = pane.firstChild
  pane.innerHTML = ''
