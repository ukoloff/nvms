###
Remotes processing
###
ask = require '../../ask'

module.exports = (i, node)->
  echo "REMOTE #{node.$[0].join '.'}[#{i}]"
  ask.$
    x86: 'x86'
    x64: 'x64'
    cancel: 'Oops!'
    'Select'
    next
    node

# Next click
next = (i, node)->
  echo "R2 #{node.$[0].join '.'}[#{i}]"
