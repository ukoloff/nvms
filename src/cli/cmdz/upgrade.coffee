require 'self/upgrade/sensor'

exports.t = "Upgrade #{PACKAGE.mingzi} itself"

exports.h = """
  Download and install latest version of #{PACKAGE.mingzi}
  """

exports.$ = ->
  require 'self/upgrade/upgrade'
