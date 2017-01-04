exports.title = 'Install some version of Node.js'

exports.args = vfilter.$

exports.help = """
  Install specified Node.js version (latest matching filter).

  Use `#{PACKAGE.mingzi} ls remote` to see available Node.js versions.
  """

exports.cmd = (args)->
  filter = vfilter args

  for r in remotes().reverse() when semver.match r.id, filter.z
    x = r
    break
  throw Error 'Specified Node.js version not found!' unless x

  x.install filter.x64
