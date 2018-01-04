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

tmp = ->
  n = 10
  while n--
    f = folder install2, ".#{rnd 3}"
    unless f.y()
      return f
  throw Error "Temporary folder not found"

extract = (self)->
  echo "Extracting:", msi self
  v = ver self
  extract2 = do tmp
  code = run 1, true, 'msiexec', '/a', msi(self, true),
    "TARGETDIR=", run._, extract2, '/qb'
  if code
    extract2.rm()
    throw Error 'Extraction failed'
  self.dst = dst = folder install2, v
    .rm true
  extract2.folders().shift().mv dst
  extract2.rm()
  return

iojs = (self)->
  return if nodew.n == self.dist
  unless (src = file self.dst, self.dist + nodew.x).y()
    return
  if (dst = file self.dst, nodew.n + nodew.x).y()
    return
  echo "Alias:", dst.bn 2
  src.cp dst
  return

prefix = (self)->
  echo "Adjusting NPM prefix..."
  npmrc =
  file self.dst, 'node_modules/npm/npmrc'
  .open 8
  npmrc.WriteLine """

    # <hack dirty src="#{PACKAGE.homepage}">
    prefix=${USERPROFILE}\\.#{PACKAGE.mingzi}\\#{junction.$.bn()}
    # </hack>
    """
  npmrc.Close()
  return

use = (self)->
  echo "Using:", v = ver self
  junction v
  return

set64= (self, is64)->
  self.x64 = if '*' == is64 then null else is64 ? x64
  return

# MSI exists and not empty
available = (dst)->
  dst.y() and dst.sz() > 1e6

exports.install = (is64)->
  set64 self = @, is64
  unless available dst = msi self, true
    fetch uri(self), dst
  extract self
  iojs self
  prefix self
  use self
  return

# Install OpenSSL binary
exports.O = (is64, force)->
  dst = file install2, bat.O
  if !force and dst.y()
    return false
  set64 @, is64
  fetch uri(@, dst.bn()), dst
  echo "Creating shortcut..."
  bat junction.$.bn()
  return

# Find local version matching
exports.local = (is64)->
  set64 @, is64
  vfilter @$[0], @dist, @x64
  .local()
  .last()
