###
Locals processing
###
ask = require '../../ask'

module.exports = (i, node)->
  echo "LOCAL #{node.$[0].join '.'}[#{i}]"
  ask.$
    yes: '.'
    no: 'Oops!'
    if i then 'Remove' else 'Use'
    next
    node

# Next click
next = (i, node)->
  echo "L2 #{node.$[0].join '.'}[#{i}]"
