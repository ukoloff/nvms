###
Quick install/upgrade
###
require('../tools/err') ->
  require('../sys/echo') "Installing/upgrading #{PACKAGE.mingzi} v#{PACKAGE.version}..."
  require '../tools/upgrade'
  return
