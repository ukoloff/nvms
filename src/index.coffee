#
# Main entry point
#

# sh = require './sys/sh'
# fs = require './sys/fs'
# ie = do require './sys/ie'
# ajax = do require './sys/ajax'

echo = require './sys/echo'
mkpath = require './tools/mkpath'

echo "Hello from #{PACKAGE.name} v#{PACKAGE.version}!"

require './cmd'

echo mkpath.dst()
