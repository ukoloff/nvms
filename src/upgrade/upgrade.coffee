###
Perform self upgrade
###
fetch "#{PACKAGE.homepage}/archive/dist.zip", zip = file cache, "#{PACKAGE.mingzi}.zip"

echo "Extracting..."

unpack = folder cache, PACKAGE.mingzi
.mk true

# https://github.com/hakobera/nvmw/blob/master/unzip.js
unpack.ns()
.copyHere zip.ns().Items(), 16 # Respond with "Yes to All" for any dialog box that is displayed

zip.rm()

findBat = (at)->
  for f in at.files() by -1
    if 'bat' == f.ext()
      return f
  for f in at.folders() by -1
    if f = findBat f
      return f

unless bat = findBat unpack
  try unpack.rm()
  throw Error "Setup not found"

sh.Run bat
