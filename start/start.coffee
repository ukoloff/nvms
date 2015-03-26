require './commands'
coffee418 = require 'coffee418/lib'
options = require 'coffee418/lib/standalone'

options.watch = false
coffee418 options
