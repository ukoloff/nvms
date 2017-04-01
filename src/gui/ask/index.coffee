###
User confirmation
###
append = require '../tabs/journal'
  .$
t = require './html'

current =   # Link to .ask while in callback
active =    # Hidden .ask (when popup active)
  0
popups = []

# Drop popups
drop = ->
  for z in popups by -1
    try z.parentNode.removeChild z
  popups = []
  return

# Reset popups
exports.z = reset = ->
  drop()
  if active
    active.className = active.className.split(/\s+/)[0]
    active = 0
  return

# Install listener to .ask
one = (span, fn, data)->
  for a, i in $ 'a', span
    a.onclick = do (i)-> ->
      setTimeout ->
        unless span in popups
          reset()
        current = span
        fn i, data
        current = 0
      false
  return

# Install listeners for many .ask
exports.x = (dom, fn, array)->
  for span in $ 'span', dom by -1 when 'ask' == span.className
    one span, fn, array.pop()
  return

# Show "popup"
exports.$ = (options, title, fn, data)->
  return unless current
  drop()
  unless active
    active = current
    current.className += ' hide'
  popups = append current.parentNode, t options, title
  for z in popups by -1
    one z, fn, data
  return
