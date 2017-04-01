###
User confirmation
###
append = require '../tabs/journal'
  .$
t = require './html'

# Link to .ask while in callback
current = 0

# Install listener to .ask
one = (span, fn, data)->
  if 'ask' != span.className
    return
  for a, i in $ 'a', span
    a.onclick = do (i)-> ->
      setTimeout ->
        current = span
        fn i, data
        current = 0
      false
  return

# Install listeners for many .ask
exports.x = (dom, fn, array)->
  for span in $ 'span', dom by -1
    one span, fn, array.pop()
  return

# Show "popup"
exports.$ = (options, title, fn, data)->
  return unless current
  current.className += ' hide'
  for z in append current.parentNode, t options, title
    one z, fn, data
  return
