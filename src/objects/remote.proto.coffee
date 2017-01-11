###
Methods of remote [Node.js version]
###

ver = (self)->
  "#{self.dist}-#{self.src.version}-x#{if self.x64 then 64 else 86}"

msi = (self, full)->
  out = "#{ver self}.msi"
  if full
    file cache, out
  else
    file out

uri = (self, file = msi self)->
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
  v = ver self
  extract2 = folder cache, v
  .rm true
  run 1, true, 'msiexec', '/a', msi(self, true), "TARGETDIR=#{extract2}", '/passive'
  self.dst = dst = folder install2, v
  .rm true
  extract2.folders().shift().mv dst
  extract2.rm()

iojs = (self)->
  return if 'node' == self.dist
  echo "Creating shortcut..."
  file self.dst, "#{self.dist}.exe"
  .cp file self.dst, "node.exe"

prefix = (self)->
  echo "Adjusting NPM prefix..."
  npmrc =
  file self.dst, 'node_modules/npm/npmrc'
  .open 8
  npmrc.WriteLine """

    # <hack dirty src="#{PACKAGE.homepage}">
    prefix=${APPDATA}\\#{PACKAGE.mingzi}\\#{junction.$.bn()}
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
  ajax url, file install2, cli
  echo "Creating shortcut..."
  bat junction.$.bn()
  return

# Find local version matching
exports.local = (is64)->
  set64 @, is64
  new vfilter._ @$[0], @dist, @x64
  .local()
  .last()
