each = require './each'

module.exports =
argv = []

each WScript.Arguments, (a)->
  argv.push a
