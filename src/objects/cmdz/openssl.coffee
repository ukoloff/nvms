exports.title = 'Install OpenSSL utility'

exports.args = vfilter.$6

exports.help = """
  Install openssl.exe precompiled for Node.js project
  """

exports.$ = (args)->
  # Node.js v0.*.* contains OpenSSL binary
  remote =
  new vfilter.ctr [0]
  .last()
  unless remote
    throw Error 'Appropriate Node.js version not found!'
  remote.O vfilter.x64 args[0]
