###
Parsing Node.js version in command line
###
Filter = (semver, dist, x64)->
  @$ = [semver or [], [dist]]
  @x64 = x64
  return

Filter:: = vfilter.proto

keys = ->
  k for k of dists

# Parser itself
module.exports =
exports = (args)->
  ks = new abbrev $: keys()
  for arg in args
    if x = ks.$ arg
      dist = x
    else if (is64 = parse64 arg)?
      $64 = is64
    else if /^\d/.test arg
      ver = semver arg
  new Filter ver, dist, $64

# export constructor
exports._ = Filter

# Parse x86|x64
exports.x64 =
parse64 = (str)->
  return unless /^x(\d)/.test str
  '6' == RegExp.$1

# Help strings
alt = (arr)->
  "[#{arr.join '|'}]"

exports.$6 = $6 = do ->
  x = ['x86','x64']
  alt if x64 then x.reverse() else x

exports.$ = "#{alt keys()} [n[.n[.n]]] #{$6}"
