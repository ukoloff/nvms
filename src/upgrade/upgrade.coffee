###
Perform self upgrade
###
zipName = "#{PACKAGE.mingzi}.zip"
tmpFolder = folder cache, PACKAGE.mingzi

module.exports = routine()
.s ->
  ["#{PACKAGE.homepage}/archive/dist.zip", zipName]
.a fetch
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
