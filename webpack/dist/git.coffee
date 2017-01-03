###
Run git commands
###
spawn = require 'child_process'
  .spawnSync

module.exports = git = (root)-> (cmds...)->
  spawn 'git', cmds,
    stdio: 'inherit'
    cwd: root

git.current = ->
  spawn 'git', ['log', '-1', '--format=%h: %s']
  .stdout.toString()
