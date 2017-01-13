###
Main entry point
###

require('self/tools/err') ->
  require './cmd'
  require 'self/tools/upgrade/hint'
  return
