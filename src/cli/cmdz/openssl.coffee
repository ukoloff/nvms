vFilter = require '../vfilter'

exports.t = 'Install OpenSSL utility'

exports._ = "#{vFilter.$6} [.]"

exports.h = """
  Install openssl.exe precompiled for Node.js project
  """

# Node.js v0.*.* contains OpenSSL binary
exports.$ = (args)->
  force = period args
  if not force and remotes.O()
    echo "OpenSSL is already installed. To reinstall say:", period.$
    return
  remote = vfilter [0]
    .last()
  unless remote
    throw Error 'Appropriate Node.js version not found!'
  remotes.S remote
  return
