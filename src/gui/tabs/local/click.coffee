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
    next
    node
  return

# Next click
next = (i, node)->
  ask.z()
  unless i
    echo "Local #{node.$[0].join '.'} x#{if node.x64 then 64 else 86}"
  return
