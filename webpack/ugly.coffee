#
# Patch webpack's UglifyJS plugin
#

module.exports =
me = ->

me::apply = (compiler)->
  console.log 'Hi!'
