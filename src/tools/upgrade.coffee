###
Perform self upgrade
###
module.exports = ->
  url = "#{PACKAGE.homepage}/archive/dist.zip"
  zip = fs.BuildPath cache, "#{PACKAGE.mingzi}.zip"
  echo "Fetching:", url
  ajax.dl url, zip

  echo "Extracting..."
  # https://github.com/hakobera/nvmw/blob/master/unzip.js
  shell = activeX "Shell.Application"
  zip = shell.NameSpace zip

  if fs.FolderExists unpack = fs.BuildPath cache, PACKAGE.mingzi
    fs.DeleteFolder unpack
  mkpath unpack
  shell.NameSpace unpack
  .copyHere zip.Items(), 0

  unless bat = findBat fs.GetFolder unpack
    echo "Setup not found. Exiting"
    return
  sh.Run """
  "#{bat}"
  """

findBat = (folder)->
  result = 0
  each folder.Files, (file)->
    return if 'bat' != fs.GetExtensionName file.Name
    result = file.Path
    false
  return result if result
  each folder.SubFolders, (folder)->
    return unless file = findBat folder
    result = file
    false
  result
