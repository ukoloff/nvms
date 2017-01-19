###
Perform self upgrade
###
echo "Fetching:", url = "#{PACKAGE.homepage}/archive/dist.zip"
ajax url, zip = file cache, "#{PACKAGE.mingzi}.zip"

echo "Extracting..."
# https://github.com/hakobera/nvmw/blob/master/unzip.js

unpack = folder cache, PACKAGE.mingzi
.mk true

unpack.ns()
.copyHere zip.ns().Items(), 0

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