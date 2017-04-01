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
