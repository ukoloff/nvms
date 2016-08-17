install = require './install
'
exports.title = 'Install OpenSSL utility'

exports.args = install.args64

exports.help = """
  Install openssl.exe precompiled for Node.js project
  """

exports.cmd = (args)->
  for r in remotes().reverse() when semver.match r.id, [[0]]
    x = r
    break
  throw Error 'Appropriate Node.js version not found!' unless x
  r.openssl install.x64 args[0]
