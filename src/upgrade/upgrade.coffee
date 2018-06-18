###
Perform self upgrade
###
locations = require './locations'

zipName = "#{PACKAGE.mingzi}.zip"
tmpFolder = folder cache, PACKAGE.mingzi

module.exports = routine()
.s ->
  echo "Loading:", zipName
  return
.a ->
  for uri in locations zipName
    if fetch uri, zipName
      return
  throw Error "Cannot load #{zipName}"
.s ->
  echo "Extracting..."
  return
.a ->
  zip = file cache, zipName

  tmpFolder.mk true

  # https://github.com/hakobera/nvmw/blob/master/unzip.js
  tmpFolder.ns()
    .copyHere zip.ns().Items(), 16 # Respond with "Yes to All" for any dialog box that is displayed

  zip.rm()
  return
.s ->
  unless bat = findBat tmpFolder
    try tmpFolder.rm()
    throw Error "Setup not found"

  echo "Running:", bat.bn()
  sh.Run bat
  return
.$()

findBat = (at)->
  for f in at.files() by -1
    if 'bat' == f.ext()
      return f
  for f in at.folders() by -1
    if f = findBat f
      return f
