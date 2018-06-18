###
Build URIs to fetch
###
dists = require './dists.yml'

module.exports = (name)->
  if Math.random() > 0.5
    dists.reverse()
  for z in dists
    if 0 > z.indexOf '?'
      "#{z}/#{name}"
    else
      z.replace '?', "/#{name}?"
