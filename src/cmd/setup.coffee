fs = require '../sys/fs'
sh = require '../sys/sh'
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
  fs.CopyFile WScript.ScriptFullName,
    fs.BuildPath dst, PACKAGE.name + '.bat'
  fs.CopyFile junction.src(), j = junction.dst()
  bat 'system'
  sh.exec """
    "#{j}" "#{fs.BuildPath dst, 'current'}"  "#{fs.BuildPath dst, 'system'}"
"""
  path.install()
