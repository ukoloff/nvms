###
Parsing Node.js version in command line
###
keys = for k of dists
  k

ks = new abbrev
ks.add
  words: keys

Filter = (semver, dist, x64)->
  @$ = [semver or [], [dist]]
  @x64 = x64
  return

Filter:: = vfilter.proto

# Parser itself
module.exports =
parse = (args)->
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
parse.x64 =
x64 = (str)->
  return unless /^x(\d)/.test str
  '6' == RegExp.$1

# Help strings
parse.$6 = $6 = "[x86|x64]"
parse.$ = "[#{keys.join '|'}] [n[.n[.n]]] #{$6}"
