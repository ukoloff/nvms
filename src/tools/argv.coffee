module.exports =
argv = require '../sys/argv'

do argv.shift if ':' == argv[0]
