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
reset = ->
  drop()
  if active
    active.className = active.className.split(/\s+/)[0]
    active = 0
  return

# Install listener to .ask
one = (span, fn, data)->
  for a, i in $ 'a', span
    a.onclick = do (i)-> ->
      defer ->
        unless span in popups
          reset()
        current = span
        try
          fn i, data
        finally
          current = 0
        return
      false
  return

# Show "popup"
module.exports =
exports = (options, title, fn, data)->
  unless options
    reset()
    return
  unless current
    return
  drop()
  unless active
    active = current
    current.className += ' hide'
  popups = append active.parentNode, t options, title
  for z in popups by -1
    one z, fn, data
  return

# Install listeners for many .ask
exports.$ = (dom, fn, array)->
  for span in $ 'span', dom by -1 when 'ask' == span.className
    one span, fn, array.pop()
  return

cancelHint = 'No, thanks!'

# Select x86/x64
exports.x = (title, cmd, callback)->
  platforms = [64, 86]
  if x64
    platforms.reverse()
  options = {}
  for p in platforms by -1
    options["x#{p}"] = "#{PACKAGE.mingzi} #{cmd} x#{p}"
  options.cancel = cancelHint

  exports options, title, (i)->
    if i > 1
      defer exports
      return
    callback not i != not x64
    return
  return

# Select yes/no
exports.y = (title, cmd, callback)->
  exports
    yes: "#{PACKAGE.mingzi} #{cmd}"
    no: cancelHint
    "#{title}:"
    (i)->
      if i
        defer exports
        return
      do callback
      return
  return
