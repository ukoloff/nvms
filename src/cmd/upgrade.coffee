exports.title = "Upgrade #{PACKAGE.mingzi} itself"

exports.help = """
  Download and install latest version of #{PACKAGE.mingzi}
  """

exports.cmd = ->
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
