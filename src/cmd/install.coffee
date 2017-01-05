exports.title = 'Install some version of Node.js'

exports.args = "#{vfilter.$} [.]"

exports.help = """
  Install specified Node.js version (latest matching filter).

  Use `#{PACKAGE.mingzi} ls remote` to see available Node.js versions.

  If specified version is already installed, it will be used
  without installation. To force reinstallation - add . as last parameter.
  """

exports.cmd = (args)->
  force = period args
  filter = vfilter args

  for r in remotes() by -1 when filter.match r.id
    x = r
    break
  throw Error 'Specified Node.js version not found!' unless x

  if not force
    x.set64 filter.x64
    if local = findLocal x
      echo "#{local.path} is installed. To reinstall say: #{period.cmd}"
      x.use()
      return

  x.install filter.x64

findLocal = (remote)->
  filter = remote.lfilter()
  for z in locals() by -1 when semver.match z.id, filter
    return z
  return
