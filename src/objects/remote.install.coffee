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
  return if nodew.n == remote.dist
  f = folder install2, @ver
  unless (src = file f, remote.dist + nodew.x).y()
    return
  if (dst = file f, nodew.n + nodew.x).y()
    return
  echo "Alias:", dst.bn 2
  src.cp dst
  return
.s ->
  echo "Adjusting NPM prefix..."
  npmrc =
  file install2, v = @ver, 'node_modules/npm/npmrc'
    .open 8
  npmrc.WriteLine """

    # <hack dirty src="#{PACKAGE.homepage}">
    prefix=${USERPROFILE}\\#{junction.$.bn 2}
    # </hack>
    """
  npmrc.Close()

  echo "Using:", v
  junction v
  return
.$()
