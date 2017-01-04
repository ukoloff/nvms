exports.title = 'Install OpenSSL utility'

exports.args = vfilter.$6

exports.help = """
  Install openssl.exe precompiled for Node.js project
  """

exports.cmd = (args)->
  for r in remotes().reverse() when semver.match r.id, [[0]]
    x = r
    break
  throw Error 'Appropriate Node.js version not found!' unless x
  r.openssl vfilter.x64 args[0]
