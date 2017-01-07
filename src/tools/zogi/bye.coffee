# Remove folder
exports.$ = (folder)->
  if fs.FolderExists folder = fs.BuildPath install2, folder[0]
    fs.DeleteFolder folder
