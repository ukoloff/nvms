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
  echo "Removing from PATH"
  addpath()
  echo "Removing files..."
  junction false
  require 'self/setup/pif.drop'
  require '../zog'
    # ZOG::bye
    .b ''
  echo """

    Fare thee well! and if for ever,
    Still for ever, fare thee well!

  """
  exit()
  return  # NOOP

# ZOG command: Remove folder
exports.z = (path)->
  folder install2, path[0]
  .rm true
