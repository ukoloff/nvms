###
Parsing Node.js version in command line
###
keys = ->
  k for k of dists

ltstring = 'lts'

# Parser itself
module.exports =
exports = (args)->
  ks = abbrev keys()
  ltsa = abbrev ltstring
  for arg in args
    if x = ks.$ arg
      dist = x
    else if (is64 = parse64 arg)?
      $64 = is64
    else if /^v?\d/i.test arg
      ver = semver arg
    else if ltsa.$ arg
      lts = true
  vfilter ver, dist, $64, lts

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

exports.$ = "#{alt keys()} [[v]N[.N[.N]]] #{$6} #{alt [ltstring]}"
