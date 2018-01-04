###
Operations with remote (available to install) Node.js versions
###

module.exports =
exports = (fast)->
  unless fast
    do fetch.versions
  r = []
  for k, v of dists when (f = file cache, "#{k}.json").y()
    for z in json2 f.load() when msiAvailable z
      r.push
        $: [semver(z.version), [k], [!!line.lts]]
        dist: k
        src: z
  r.sort semver.$

msiAvailable = (line)->
  ~line.files.join().indexOf '-msi'

# Latest version available to upgrade to
exports.v = ->
  return unless remote = exports(true).pop()
  return if remote.local '*'
  remote.$[0].join '.'
