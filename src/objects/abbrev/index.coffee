###
Hand-made abbrev with aliases
###
module.exports = (words, aliases)->
  self = new Abbrev
  self.add words, aliases
  self

Abbrev = ->

Abbrev:: = require './proto'
