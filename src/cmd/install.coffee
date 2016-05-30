@name = 'install'

@stage = 'normal'

@title = 'Install Node.js'

keys = for k of dists
  k

@args = "[#{keys.join '|'}] [n[.n[.n]]] [x86|x64]"

@description = """
Install specified Node.js version
"""

@cmd = ->
  filter = parse()
  filter.x64 ?= x64

  for r in remotes.list() when semver.match r.id, filter.z
    x = r
  throw Error 'Specified Node.js version not found!' unless x

  ver = "#{x.dist}-#{x.src.version}-x#{if filter.x64 then 64 else 86}"
  msi = "#{ver}.msi"
  uri  = "#{dists[x.dist]}#{x.src.version}/#{
    if filter.x64 and !x.id[0][0] then 'x64/' else ''
    }#{msi}"

  echo "Fetching <#{uri}>..."
  ajax.dl uri, dst = fs.BuildPath cache, msi

  echo "Extracting #{msi}..."
  sh.Run """
    msiexec /a "#{dst}" TARGETDIR=#{extract2 = fs.BuildPath cache, ver} /passive
    """, 1, true
  if fs.FolderExists newPath = fs.BuildPath install2, ver
    fs.DeleteFolder newPath
  fs.MoveFolder each(fs.GetFolder(extract2).SubFolders).shift().Path,
    fs.BuildPath install2, ver
  fs.DeleteFolder extract2

  echo "Creating shortcuts..."
  bat ver

  if 'node' != x.dist
    fs.CopyFile fs.BuildPath(newPath, "#{x.dist}.exe"),
      fs.BuildPath(newPath, "node.exe")

  echo "Adjusting NPM prefix..."
  npmrc = fs.OpenTextFile fs.BuildPath(newPath, 'node_modules/npm/npmrc'), 8
  npmrc.WriteLine """

    # <hack dirty src="#{PACKAGE.homepage}">
    prefix=${APPDATA}\\nvm$\\current
    # </hack>
    """
  npmrc.Close()

  echo "Using #{ver}..."
  junction.exec ver

# Parse version requirements
@parse =
parse = (args = argv.slice 1)->
  ks = abbrev.apply abbrev, keys
  r = {}
  for z in args
    if x = ks[z]
      r.dist = x
    else if /^x(\d)/.test z
      r.x64 = /^6/.test RegExp.$1
    else if /^\d/.test z
      r.ver = for z in z.split /\D+/ when z.length
        Number z
  r.z = [r.ver or [], [r.dist]]
  r.local = ->
    @z[1].push @x64
    @
  r
