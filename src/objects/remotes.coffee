###
Get available distributions list
###

module.exports =
exports = (fast)->
  unless fast
    do fetch.versions
  r = []
  for k, v of dists when (f = file cache, "#{k}.json").y()
    for z in json2 f.load() when msi z
      r.push new Remote z, k
  r.sort semver.$

msi = (line)->
  ~line.files.join().indexOf '-msi'

# Latest version available to upgrade to
exports.v = ->
  return unless remote = exports(true).pop()
  return if remote.local '*'
  remote.$[0].join '.'

Remote = (line, dist)->
  @$ = [semver((@src = line).version), [@dist = dist], [!!line.lts]]
  return

Remote:: = remote.proto
