###
Locals processing
###
ask = require '../../ask'

module.exports = (i, node)->
  verb = if i then 'Remove' else 'Use'
  ver = node.$[0].join '.'
  echo "LOCAL #{verb} #{ver}"
  ask.$
    yes: "#{PACKAGE.mingzi} #{
      verb.toLowerCase()} #{
      ver} x#{
      if node.x64 then 64 else 86}"
    no: 'Oops!'
    verb
    next
    node

# Next click
next = (i, node)->
  echo "L2 #{node.$[0].join '.'}[#{i}]"
  if i
    ask.z()
