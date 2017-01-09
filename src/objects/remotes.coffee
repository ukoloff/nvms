###
Get available distributions list
###

module.exports =
list = ->
  r = []
  for k, v of dists
    if cached f = dpath k
      tab = f.load()
    else
      echo "Fetching:", url = "#{v}index.tab"
      f.save tab = ajax url
    tab = for z in tsv tab when msi z
      new Remote z, k
    r = r.concat tab
  r.sort semver.cmp$

dpath = (dist)->
  file cache, "#{dist}.tsv"

cached = (f)->
  f.ok 1000*60*60*24

cachedAll = ->
  for k of dists when not cached dpath k
    return
  true

msi = (line)->
  ~line.files.indexOf '-msi'

# Check for upgrade
list.$ = ->
  return unless cachedAll()
  return unless remote = list().pop()
  return if remote.local '*'
  remote.$[0].join '.'

Remote = (line, dist)->
  semver = for z in line.version.split /\D+/ when z.length
    Number z
  @$ = [semver, [dist]]
  @dist = dist
  @src = line
  return

Remote:: = remote.proto
