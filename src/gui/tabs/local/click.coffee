###
Locals processing
###
ask = require '../../ask'

module.exports = (i, node)->
  verb = if i then 'Remove' else 'Use'
  ask.$
    yes: "#{PACKAGE.mingzi} #{
      verb.toLowerCase()} #{
      node.$[0].join '.'} x#{
      if node.x64 then 64 else 86}"
    no: 'Oops!'
    verb
    if i then drop else use
    node
  return

# Use
use = (i, node)->
  ask.z()
  if i
    return
  node.use()
  require '.'
    .r()
  return

# Remove. To be implemented
drop = (i, node)->
  if i
    ask.z()
    return
  ask.$
    cancel: "Oops!"
    'Under construction...'
    ask.z
  return
