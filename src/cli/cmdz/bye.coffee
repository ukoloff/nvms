exports.q = 'boeing'

exports.t = "Uninstall #{PACKAGE.mingzi}"

exports._ = "[.]"

exports.h = """
  Totally remove #{PACKAGE.mingzi} manager and all installed Node.js versions.

  Without trailing dot command does nothing.
  """

exports.$ = (args)->
  unless period args
    echo """

      Say #{period.$} to really remove everything.
    """
    exit()
  echo "Removing from PATH"
  addpath()
  echo "Removing files..."
  junction false
  zog 'bye', ''
  echo """

    Fare thee well! and if for ever,
    Still for ever, fare thee well!

  """
  exit()
  return  # NOOP
