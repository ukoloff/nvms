#
# Run git commands
#
spawn = require 'child_process'
  .spawnSync

module.exports = (root)-> (cmds...)->
  spawn 'git', cmds,
    stdio: 'inherit'
    cwd: root
