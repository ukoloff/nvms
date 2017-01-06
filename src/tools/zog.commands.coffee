###
ZOG commands
###

# Remove folder
exports.bye = (folder)->
  if fs.FolderExists folder = fs.BuildPath install2, folder[0]
    fs.DeleteFolder folder

# Fetch latest version from GitHub
exports.upgrade = ->
  require './upgrade.test'
  .$()

