###
Install Node.js version
###

# MSI exists and not empty
available = (dst)->
  dst.y() and dst.sz() > 1e6

tmp = ->
  n = 10
  while n--
    f = folder install2, ".#{rnd 3}"
    unless f.y()
      return f
  throw Error "Temporary folder not found"

module.exports = routine()
.s (remote, is64 = x64)->
  # Prepare to fetch
  @ver = ver = "#{remote.dist}-#{remote.src.version}-x#{if is64 then 64 else 86}"
  msi = "#{ver}.msi"
  return if available file cache, msi
    false
  else
    [
      "#{dists[remote.dist]}#{remote.src.version}/#{
      if is64 and not remote.$[0][0]
        'x64/'
      else
        ''
      }#{msi}",
      msi
    ]
.a fetch
.s ->
  echo "Extracting:", ver = @ver
  ver
.a (ver)->
  extract2 = do tmp
  try
    if run 1, true, 'msiexec', '/a', "#{file cache, ver}.msi", "TARGETDIR=", run._, extract2, '/qb'
      throw Error 'Extraction failed'
    dst = folder install2, ver
      .rm true
    extract2.folders().shift().mv dst
  finally
    extract2.rm()
  return
.s (remote)->
  return if 'node' == remote.dist
  f = folder install2, @ver
  dst = file f, "#{remote.dist}.exe"
  echo "Creating:", dst.bn 2
  dst.cp file f, "node.exe"
  return
.s ->
  echo "Adjusting NPM prefix..."
  npmrc =
  file install2, @ver, 'node_modules/npm/npmrc'
  .open 8
  npmrc.WriteLine """

    # <hack dirty src="#{PACKAGE.homepage}">
    prefix=${USERPROFILE}\\.#{PACKAGE.mingzi}\\#{junction.$.bn()}
    # </hack>
    """
  npmrc.Close()
  return
.s ->
  echo "Using:", v = @ver
  junction v
  return
.$()
