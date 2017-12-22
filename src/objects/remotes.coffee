###
Get available distributions list
###

module.exports =
exports = ->
  r = []
  for k, v of dists
    unless cached f = dpath k
      fetch "#{v}index.json", f
    for z in json2 f.load() when msi z
      r.push new Remote z, k
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
  @$ = [semver((@src = line).version), [@dist = dist], [!!line.lts]]
  return

Remote:: = remote.proto
