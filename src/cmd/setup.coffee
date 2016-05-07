@name = 'setup'

@stage = 'pre'

@title = "Install #{PACKAGE.name}"

@description = """
  Installs all files to <#{install2}> and fiddles PATH.
"""

@cmd = ->
  do cmd.header
  echo "Installing to <#{mkpath.dst()}>..."
  fs.CopyFile WScript.ScriptFullName,
    fs.BuildPath install2, PACKAGE.name + '.bat'
  fs.CopyFile junction.src(), junction.dst()
  bat 'system'
  junction.exec 'system', true
  path.install()
