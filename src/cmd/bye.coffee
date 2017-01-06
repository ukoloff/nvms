exports.alias = 'boeing'

exports.title = "Uninstall #{PACKAGE.mingzi}"

exports.args = "[.]"

exports.help = """
  Totally remove #{PACKAGE.mingzi} manager and all installed Node.js versions.

  Without trailing dot command does nothing.
  """

exports.cmd = (args)->
  unless period args
    echo """

      Say #{period.cmd} to really remove everything.
    """
    exit 1
  echo "Removing from PATH"
  path.install false
  echo "Removing files..."
  junction.drop()
  zog 'bye', ''
  echo """

    Fare thee well! and if for ever,
    Still for ever, fare thee well!

  """

# ZOG command: remove folder
exports._ = (folder)->
  if fs.FolderExists folder = fs.BuildPath install2, folder[0]
    fs.DeleteFolder folder
