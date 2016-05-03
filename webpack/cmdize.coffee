#
# Wrap .js into .bat
# http://www.dostips.com/forum/viewtopic.php?p=37780#p37780
#
z = require "combined-stream2"
fs = require "fs"
path = require "path"

js2bat = """
0</*! ::
@echo off
cscript //nologo //e:javascript "%~f0" %*
goto :EOF */0;

"""

module.exports =
me = (options)->

me::apply = (compiler)->
  compiler.plugin "done", (compilation)->
    x = z.create()
    x.append new Buffer js2bat
    x.append input = fs.createReadStream 'tmp/nvms.js'
    x.append new Buffer "\n"
    x.pipe fs.createWriteStream 'tmp/nvms.bat'

    input.on 'end', ->
      fs.unlink 'tmp/nvms.js'
