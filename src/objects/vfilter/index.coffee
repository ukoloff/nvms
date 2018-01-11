###
Node.js version filter by semver, dist, platform and LTS flag
###
module.exports = (semver, dist, x64, lts)->
  self = new Filter
  self.$ = [semver or [], [dist], [lts]]
  self.x64 = x64
  self

Filter = ->

Filter:: = require './proto'
