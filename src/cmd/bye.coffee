@name = 'bye'

@alias = 'boeing'

@title = "Uninstall #{PACKAGE.mingzi}"

@args = "[.]"

@help = """
  Totally remove #{PACKAGE.mingzi} manager and all installed Node.js version(s)
  """

@cmd = (args)->
  unless period args
    echo """

      Say `#{PACKAGE.mingzi} #{argv.join ' '} .` to really remove everything.
    """
    exit 1
  echo "Removing from PATH"
  path.install false
  echo "Removing files..."
  junction.remove()
  fs.DeleteFolder install2
  echo """

    Fare thee well! and if for ever,
    Still for ever, fare thee well!
  """
