@name = 'setup'

@stage = 'pre'

@title = "Install #{PACKAGE.mingzi}"

@description = """
  Installs all files to <#{install2}> and fiddles PATH.
"""

@cmd = ->
  do cmd.header
  echo "Installing to <#{mkpath.dst()}>..."
  fs.CopyFile wsh.ScriptFullName,
    fs.BuildPath install2, PACKAGE.mingzi + '.bat'
  fs.CopyFile junction.src(), junction.dst()
  bat 'system'
  junction.exec 'system', true
  path.install()
