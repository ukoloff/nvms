exports.t = "Upgrade #{PACKAGE.mingzi} itself"

exports.h = """
  Download and install latest version of #{PACKAGE.mingzi}
  """

exports.$ = ->
  require 'self/upgrade/upgrade'

# ZOG command: Fetch latest version from GitHub
exports.z = require 'self/upgrade/sensor'
  .p
