#
# Logging to DOM
#
container = false

module.exports = (node)->
  (s)->
    node = do node if 'function' == typeof node
    unless container
      node.innerHTML = do tContainer
      container = node.firstChild
      node.innerHTML = ''
    container.innerHTML = t s
    node.appendChild x while x = container.firstChild
    return

tContainer = without ->
  do div

t = without ->
  div
    class: 'zebra'
    @
