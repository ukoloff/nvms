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
