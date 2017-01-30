###
Commit distro to repository
###
PACKAGE = require '../../package'

console.log "Creating & pushing git tag..."

# Git operations
git = require './git'

commit = git.current()

git = git require './repo'
git "init"
git "remote", 'add', 'origin', '../..'
git "checkout", '-b', 'release'
git "add", ".", '--force'
git 'commit', '-m', commit
git 'tag', '-f', vX = "v#{PACKAGE.version}"
git 'push', '--tags', '--force', 'origin'
git 'fetch'
git 'checkout', '-f', 'dist'
git 'merge', '-X', 'theirs', vX, '-m', vX
git 'push'
