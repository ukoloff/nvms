###
Start webpack and restart it if needed
###
fs = require "fs"
path = require 'path'
spawn = require 'child_process'
  .spawn

root = path.join __dirname, '..'
flag = path.join root, 'tmp/.restart'

do start = ->
  fs.unlink flag, ->
  spawn process.argv[0],
    [path.join root, 'node_modules/webpack/bin/webpack'].concat(process.argv.slice 2),
    stdio: 'inherit'
  .on 'error', (e)->
    throw e
  .on 'exit', (code, signal)->
    if signal
      process.kill process.pid, signal
    else
      fs.stat flag, (e)->
        if e
          process.exit code
        else
          console.log 'Restarting...'
          do start
