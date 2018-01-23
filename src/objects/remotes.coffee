###
Operations with remote (available to install) Node.js versions
###
module.exports =
exports = (fast)->
  unless fast
    do fetch.versions
  r = []
  for k, v of dists when (f = file cache, k + fetch.versions.x).y()
    for z in json2 f.load() when msiAvailable z
      r.push
        $: [semver(z.version), [k], [!!z.lts]]
        dist: k
        src: z
  r.sort semver.$

msiAvailable = (line)->
  ~line.files.join().indexOf '-msi'

# Extend with platform flag (x86/x64)
exports.x = (self, is64 = x64)->
  r = {}
  for k, v of self
    r[k] = v
  r.x64 = is64
  r

# Find (one of) local versions installed
exports.L =
localFor = (self)->
  unless self
    return
  vfilter self.$[0], self.dist, self.x64
    .local()
    .last()

# Full version ID, eg node-v9.3.0-x86
exports.V =
vid = (self, full)->
  result = "#{self.dist}-#{self.src.version}-x#{if self.x64 then 64 else 86}"
  if full
    folder install2, result
  else
    result

# Name of MSI-file
msi = (self, full)->
  result = "#{vid self}.msi"
  if full
    file cache, result
  else
    result

# MSI cached?
msiCached = (self)->
  dst = msi self, true
  dst.y() and dst.sz() > 1e6

# URI prefix
uri = (self)->
  "#{dists[self.dist]}#{self.src.version}/#{
    if self.x64 and not self.$[0][0]
      'x64/'
    else
      ''
    }"

# Where to unpack MSI
msiSandbox = ->
  n = 10
  while n--
    f = folder install2, ".#{rnd 3}"
    unless f.y()
      return f
  throw Error "Temporary folder not found"

# Install version
exports.i = routine()
.s (self)->
  # Prepare to fetch
  if msiCached self
    false
  else
    ["#{uri self}#{msi self}", msi self]
.a fetch
.s (self)->
  require './locals'
    .r localFor self
  echo "Extracting:", msi self
  vid self
.a (vid)->
  extract2 = do msiSandbox
  try
    if run 1, true, 'msiexec', '/a', "#{file cache, vid}.msi", "TARGETDIR=", run._, extract2, '/qb'
      throw Error 'Extraction failed'
    dst = folder install2, vid
      .rm true
    extract2.folders().shift().mv dst
  finally
    extract2.rm()
  return
.s (self)->
  # Alias for iojs.exe
  return if nodew.n == self.dist
  home = vid self, true
  unless (src = file home, self.dist + nodew.x).y()
    return
  if (dst = file home, nodew.n + nodew.x).y()
    return
  echo "Alias:", dst.bn 2
  src.cp dst
  return
.s (self)->
  echo "Adjusting NPM prefix..."
  npmrc =
  file vid(self, true), 'node_modules/npm/npmrc'
    .open 8
  npmrc.WriteLine """

    # <hack dirty src="#{PACKAGE.homepage}">
    prefix=${USERPROFILE}\\#{junction.$.bn 2}
    # </hack>
    """
  npmrc.Close()

  # Use!
  junction vid self
  return
.$()

# OpenSSL installed?
exports.Y = ->
  file install2, bat.O
    .y()

# Install OpenSSL
exports.O = routine()
.s (self)->
  ["#{uri self}#{bat.O}", file '..', bat.O]
.a fetch
.s ->
  echo "Creating shortcut..."
  bat junction.$.bn()
  return
.$()
