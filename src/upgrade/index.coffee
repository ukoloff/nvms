###
Quick install/upgrade
###
require('self/tools/err') ->
  require('self/sys/echo') "Installing/upgrading #{PACKAGE.mingzi} v#{PACKAGE.version}..."
  require 'self/tools/upgrade'
  return
