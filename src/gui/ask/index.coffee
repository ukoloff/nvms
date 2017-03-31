###
User confirmation
###
append = require '../tabs/journal'
  .$
t = require './html'

# Link to .ask while in callback
current = 0

# Install listener to .ask
one = (span, fn)->
  for a, i in $ 'a', span
    a.onclick = do (i)-> ->
      setTimeout ->
        current = span
        fn i
        current = 0
      false
  return

# Install listeners for many .ask
exports.x = (dom, fn, array)->
  for span in $ 'span', dom when 'ask' == span.className
    one span, do (data = array.shift())-> (i)->
      fn i, data

# Show "popup"
exports.$ = (options, title)->
  return unless current
  current.className += ' hide'
  append current.parentNode, t options, title
