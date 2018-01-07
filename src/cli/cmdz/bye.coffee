exports.q = 'boeing'

exports.t = "Uninstall #{PACKAGE.mingzi}"

exports._ = "[.]"

exports.h = """
  Totally remove #{PACKAGE.mingzi} manager and all installed Node.js versions.

  Without trailing dot command does nothing.
  """

exports.$ = (args)->
  unless period args
    echo "\nTo really remove everything say:", period.$
    exit()
  locals.b ->
  echo byron
  exit()
  return  # NOOP
