require 'self/upgrade/sensor'

exports.t = "Upgrade #{PACKAGE.mingzi} itself"

exports.h = """
  Download and install latest version of #{PACKAGE.mingzi}
  """

exports.$ = ->
  do require 'self/upgrade/upgrade'
  exit()
  return
