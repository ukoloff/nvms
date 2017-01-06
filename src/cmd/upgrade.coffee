exports.title = "Upgrade #{PACKAGE.mingzi} itself"

exports.help = """
  Download and install latest version of #{PACKAGE.mingzi}
  """

exports.cmd = upgrade

# ZOG command: fetch latest version from GitHub
exports._ = ->
  do upgrade.test.$
