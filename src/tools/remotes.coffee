#
# Get available distributions list
#

@list = (force)->
  r = []
  for k, v of dists
    f = fs.BuildPath cache, "#{k}.tsv"
    if not force and cached f
      tab = fs.OpenTextFile f
      .ReadAll()
    else
      url = "#{v}index.tab"
      echo "Fetching <#{url}>..."
      fs.CreateTextFile f, true
      .WriteLine tab = ajax.get url
    tab = for z in tsv tab when msi z
      new Item z, k
    r = r.concat tab
  r.sort semver.cmpi

cached = (f)->
  fs.FileExists(f) and
  new Date - fs.GetFile(f).DateLastModified < 1000*60*60*24

msi = (line)->
  ~line.files.indexOf '-msi'

Item = (line, dist)->
  semver = for z in line.version.split /\D+/ when z.length
    Number z
  @id = [semver, [dist]]
  @dist = dist
  @src = line
  @

proto = Item::

proto.ver = ->
  "#{@dist}-#{@src.version}-x#{if @x64 then 64 else 86}"

proto.msi = (full)->
  r = "#{@ver()}.msi"
  if full
    fs.BuildPath cache, r
  else
    r

proto.uri = ->
  "#{dists[@dist]}#{@src.version}/#{
    if @x64 and not @id[0][0] then 'x64/' else ''
    }#{@msi false}"

proto.fetch = ->
  echo "Fetching <#{uri = @uri()}>..."
  ajax.dl uri, @msi true

proto.extract = ->
  echo "Extracting #{@msi()}..."
  if fs.FolderExists extract2 = fs.BuildPath cache, ver = @ver()
    fs.DeleteFolder extract2
  sh.Run """
    msiexec /a "#{@msi true}" TARGETDIR=#{extract2} /passive
    """, 1, true
  if fs.FolderExists @dst = dst = fs.BuildPath install2, ver
    fs.DeleteFolder dst
  fs.MoveFolder each(fs.GetFolder(extract2).SubFolders).shift().Path, dst
  fs.DeleteFolder extract2

proto.shortcuts = ->
  echo "Creating shortcuts..."
  bat @ver()

  if 'node' != @dist
    fs.CopyFile fs.BuildPath(@dst, "#{@dist}.exe"),
      fs.BuildPath(@dst, "node.exe")

proto.prefix = ->
  echo "Adjusting NPM prefix..."
  npmrc = fs.OpenTextFile fs.BuildPath(@dst, 'node_modules/npm/npmrc'), 8
  npmrc.WriteLine """

    # <hack dirty src="#{PACKAGE.homepage}">
    prefix=${APPDATA}\\#{PACKAGE.mingzi}\\current
    # </hack>
    """
  npmrc.Close()

proto.use = ->
  echo "Using #{ver = @ver()}..."
  junction.exec ver

proto.install = (is64)->
  @x64 = is64 ? x64
  @fetch()
  @extract()
  @shortcuts()
  @prefix()
  @use()
