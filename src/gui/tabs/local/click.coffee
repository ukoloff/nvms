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
  ask.y verb, "#{verb.toLowerCase()} #{command}", ->
    defer ask
    (if i then drop else use) node
    return
  return

# Use
use = (node)->
  locals.u node
  do refresh
  return

# Remove
drop = (node)->
  require '../journal'
    .T()
  locals.r node, (success)->
    echo "Removal", if success then 'succeeded' else 'failed'
    do refresh
    return
  return

refresh = ->
  require '.'
    .U()
