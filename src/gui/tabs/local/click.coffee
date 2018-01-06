###
Locals processing
###
ask = require '../../ask'

module.exports = (i, node)->
  verb = if i then 'Remove' else 'Use'
  command = if node
    "#{node.dist} #{node.$[0].join '.'} x#{if node.x64 then 64 else 86}"
  else
    "none"
  ask.$
    yes: "#{PACKAGE.mingzi} #{verb.toLowerCase()} #{command}"
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
  locals.u node
  require '.'
    .r()
  return

# Remove
drop = (i, node)->
  ask.z()
  if i
    return
  require '../journal'
    .$r.click()
  locals.r node, (success)->
    echo "Removal", if success then 'succeeded' else 'failed'
    require '.'
      .$r.click()
  return
