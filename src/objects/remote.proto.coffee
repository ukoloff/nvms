###
Methods of remote [Node.js version]
###

ver = (self)->
  "#{self.dist}-#{self.src.version}-x#{if self.x64 then 64 else 86}"

msi = (self, full)->
  out = "#{ver self}.msi"
  if full
    fs.BuildPath cache, out
  else
    out

uri = (self, file = msi self, false)->
  "#{dists[self.dist]}#{self.src.version}/#{
    if self.x64 and not self.$[0][0]
      'x64/'
    else
      ''
    }#{file}"

fetch = (self)->
  echo "Fetching:", url = uri self
  ajax url, msi self, true

extract = (self)->
  echo "Extracting:", msi self
  if fs.FolderExists extract2 = fs.BuildPath cache, v = ver self
    fs.DeleteFolder extract2
  sh.Run """
    msiexec /a "#{msi self, true}" TARGETDIR=#{extract2} /passive
    """, 1, true
  if fs.FolderExists self.dst = dst = fs.BuildPath install2, v
    fs.DeleteFolder dst
  fs.MoveFolder each(fs.GetFolder(extract2).SubFolders).shift().Path, dst
  fs.DeleteFolder extract2

iojs = (self)->
  return if 'node' == self.dist
  echo "Creating shortcut..."
  fs.CopyFile fs.BuildPath(self.dst, "#{self.dist}.exe"),
    fs.BuildPath(self.dst, "node.exe")

prefix = (self)->
  echo "Adjusting NPM prefix..."
  npmrc = fs.OpenTextFile fs.BuildPath(self.dst, 'node_modules/npm/npmrc'), 8
  npmrc.WriteLine """

    # <hack dirty src="#{PACKAGE.homepage}">
    prefix=${APPDATA}\\#{PACKAGE.mingzi}\\#{fs.GetBaseName junction.$()}
    # </hack>
    """
  npmrc.Close()

use = (self)->
  echo "Using:", v = ver self
  junction v

set64= (self, is64)->
  self.x64 = if '*' == is64 then null else is64 ? x64
  return

exports.install = (is64)->
  set64 self = @, is64
  fetch self
  extract self
  iojs self
  prefix self
  use self
  return

# Install OpenSSL binary
exports.O = (is64)->
  set64 @, is64
  echo "Fetching:", url = uri @, cli = bat.O
  ajax url, fs.BuildPath install2, cli
  echo "Creating shortcut..."
  bat fs.GetBaseName junction.$()

# Find local version matching
exports.local = (is64)->
  set64 @, is64
  new vfilter.ctr @$[0], @dist, @x64
  .local()
  .last()
