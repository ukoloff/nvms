###
Get available distributions list
###

module.exports = (force)->
  r = []
  for k, v of dists
    f = fs.BuildPath cache, "#{k}.tsv"
    if not force and cached f
      tab = fs.OpenTextFile f
      .ReadAll()
    else
      url = "#{v}index.tab"
      echo "Fetching <#{url}>..."
      tab = ajax.get url
      fs.CreateTextFile f, true
      .WriteLine tab
    tab = for z in tsv tab when msi z
      new Remote z, k
    r = r.concat tab
  r.sort semver.cmpi

cached = (f)->
  fs.FileExists(f) and
  new Date - fs.GetFile(f).DateLastModified < 1000*60*60*24

msi = (line)->
  ~line.files.indexOf '-msi'

Remote = (line, dist)->
  semver = for z in line.version.split /\D+/ when z.length
    Number z
  @$ = [semver, [dist]]
  @dist = dist
  @src = line
  return

Remote:: = require './remote.proto'
