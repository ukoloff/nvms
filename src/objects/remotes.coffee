###
Get available distributions list
###

module.exports =
list = ->
  r = []
  for k, v of dists
    if cached f = dpath k
      tab = fs.OpenTextFile f
      .ReadAll()
    else
      url = "#{v}index.tab"
      echo "Fetching:", url
      tab = ajax url
      fs.CreateTextFile f, true
      .WriteLine tab
    tab = for z in tsv tab when msi z
      new Remote z, k
    r = r.concat tab
  r.sort semver.$

dpath = (dist)->
  fs.BuildPath cache, "#{dist}.tsv"

cached = (f)->
  fs.FileExists(f) and
  new Date - fs.GetFile(f).DateLastModified < 1000*60*60*24

cachedAll = ->
  for k of dists when not cached dpath k
    return
  true

msi = (line)->
  ~line.files.indexOf '-msi'

# Check for upgrade
list.$ = ->
  return unless cachedAll()
  remote = list()
  return unless remote and remote.length
  remote = remote[remote.length - 1]
  return if remote.local '*'
  remote.$[0].join '.'

Remote = (line, dist)->
  ver = semver line.version
  @$ = [ver, [dist]]
  @dist = dist
  @src = line
  return

Remote:: = remote.proto
