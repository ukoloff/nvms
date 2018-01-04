vFilter = require '../vfilter'

exports.t = 'Install OpenSSL utility'

exports._ = "#{vFilter.$6} [.]"

exports.h = """
  Install openssl.exe precompiled for Node.js project
  """

# Node.js v0.*.* contains OpenSSL binary
exports.$ = (args)->
  force = period args
  remote =
  vfilter [0]
  .last()
  unless remote
    throw Error 'Appropriate Node.js version not found!'
  if false == remote.O vFilter.x64(args[0]), force
    echo "OpenSSL is already installed. To reinstall say:", period.$
  return
