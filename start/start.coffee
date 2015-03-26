require './commands'

coffee418 = require 'coffee418'
options = coffee418.defaults()

options.watch = false
coffee418 options
