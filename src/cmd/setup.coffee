fs = require '../sys/fs'
echo = require '../sys/echo'
mkpath = require '../tools/mkpath'
junction = require '../tools/junction'
path = require '../tools/path'
bat = require '../tools/bat'

@name = 'setup'

@stage = 'pre'

@title = "Install #{PACKAGE.name}"

@description = """
  Installs all files to <#{require '../tools/install2'}> and fiddles PATH.
"""

@cmd = ->
  echo "Installing to <#{dst = mkpath.dst()}>..."
  fs.CopyFile WScript.ScriptName,
    fs.BuildPath dst, PACKAGE.name + '.js'
  fs.CopyFile junction.src(), junction.dst()
  bat 'system'
  path.install()
