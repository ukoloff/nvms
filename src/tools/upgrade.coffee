###
Perform self upgrade
###
module.exports = ->
  echo "Fetching:", url = "#{PACKAGE.homepage}/archive/dist.zip"
  ajax url, zip = file cache, "#{PACKAGE.mingzi}.zip"

  echo "Extracting..."
  # https://github.com/hakobera/nvmw/blob/master/unzip.js
  shell = activeX "Shell.Application"

  unpack = folder cache, "#{PACKAGE.name}-setup"
  .rm true
  .mk()

  unpack.ns().copyHere zip.ns().Items(), 0

  zip.rm()

  unless bat = findBat unpack
    echo "Setup not found. Exiting"
    return
  sh.Run """
  "#{bat}"
  """

findBat = (at)->
  for f in at.files() by -1
    if 'bat' == f.ext()
      return f
  for f in at.folders() by -1
    if f = findBat f
      return f
