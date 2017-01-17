###
Get available distributions list
###

module.exports =
exports = ->
  r = []
  for k, v of dists
    if cached f = dpath k
      tab = f.load()
    else
      echo "Fetching:", url = "#{v}index.json"
      f.save tab = ajax url
    tab = for z in json2 tab when msi z
      new Remote z, k
    r = r.concat tab
  r.sort semver.$

dpath = (dist)->
  file cache, "#{dist}.json"

cached = (f)->
  f.ok 1000*60*60*24

cachedAll = ->
  for k of dists when not cached dpath k
    return
  true

msi = (line)->
  ~line.files.join().indexOf '-msi'

# Latest version available to upgrade to
exports.v = ->
  return unless cachedAll()
  return unless remote = exports().pop()
  return if remote.local '*'
  remote.$[0].join '.'

Remote = (line, dist)->
  ver = semver line.version
  @$ = [ver, [dist]]
  @dist = dist
  @src = line
  return

Remote:: = remote.proto
