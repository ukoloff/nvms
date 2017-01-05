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
parse = (args)->
  ks = new abbrev $: keys()
  for arg in args
    if x = ks.$ arg
      dist = x
    else if (is64 = x64 arg)?
      $64 = is64
    else if /^\d/.test arg
      ver = for n in arg.split /\D+/ when n.length
        Number n
  new Filter ver, dist, $64

# export constructor
parse.ctr = Filter

# Parse x86|x64
parse.x64 = (str)->
  return unless /^x(\d)/.test str
  '6' == RegExp.$1

# Help strings
alt = (arr)->
  "[#{arr.join '|'}]"

parse.$6 = $6 = do ->
  x = ['x86','x64']
  alt if x64 then x.reverse() else x

parse.$ = "#{alt keys()} [n[.n[.n]]] #{$6}"
