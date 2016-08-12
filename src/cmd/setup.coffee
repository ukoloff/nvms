@name = 'setup'

@stage = 'pre'

@title = "Install #{PACKAGE.mingzi}"

@help = """
  Installs all files to <#{install2}> and fiddles PATH.
  """

@cmd = ->
  do cmd.header
  echo "Installing to <#{install2}>..."
  mkpath install2
  echo "Copying files..."
  fs.CopyFile wsh.ScriptFullName, fs.BuildPath install2, 'cli.bat'
  fs.CopyFile junction.src(), junction.dst()
  echo "Creating shortcuts..."
  bat 'none'
  junction.eula()
  junction.exec 'none', true
  echo "Updating PATH..."
  path.install()
  echo """
  Installation complete.
  Open new console and run '#{PACKAGE.mingzi} help' to start.
  """
