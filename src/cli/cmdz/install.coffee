exports.t = 'Install some version of Node.js'

exports._ = "#{vfilter.$} [.]"

exports.h = """
  Install specified Node.js version (latest matching filter).

  Use `#{PACKAGE.mingzi} ls remote` to see available Node.js versions.

  If specified version is already installed, it will be used
  without installation. To force reinstallation - add . as last parameter.
  """

exports.$ = (args)->
  force = period args
  filter = vfilter args
  unless x = filter.last()
    throw Error 'Specified Node.js version not found!'

  if not force
    if local = x.local filter.x64
      echo "#{local.path} is installed. To reinstall say:", period.$
      local.use()
      return

  # x.install filter.x64
  remote.install x, filter.x64
  return
