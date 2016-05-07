@name = 'setup'

@stage = 'pre'

@title = "Install #{PACKAGE.name}"

@description = """
  Installs all files to <#{install2}> and fiddles PATH.
"""

@cmd = ->
  do cmd.header
  echo "Installing to <#{dst = mkpath.dst()}>..."
  fs.CopyFile WScript.ScriptFullName,
    fs.BuildPath dst, PACKAGE.name + '.bat'
  fs.CopyFile junction.src(), j = junction.dst()
  bat 'system'
  sh.exec """
    "#{j}" "#{fs.BuildPath dst, 'current'}"  "#{fs.BuildPath dst, 'system'}"
"""
  path.install()
