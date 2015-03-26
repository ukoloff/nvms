#
# Main entry point
#
ini = require '../package'

sh = require './sys/sh'
fs = require './sys/fs'
ie = do require './sys/ie'
ajax = do require './sys/ajax'

WScript.Echo "Hello from #{ini.name} v#{ini.version}!"

require './cmd'
