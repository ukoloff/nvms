#
# Run git commands
#
spawn = require 'child_process'
  .spawn

module.exports = (cmds...)->
  wait spawn 'git', cmds, stdio: 'inherit'

wait = (child)->
  child.on 'exit', (code, signal)->
    if signal
      process.kill process.pid, signal
    else
      process.exit code
