###
Parsing Node.js version in command line
###
keys = for k of dists
  k

# Parser itself
module.exports =
parse = (args = [])->
  ks = new abbrev
  ks.add
    words: keys
  r = {}
  for z in args
    if x = ks.is z
      r.dist = x
    else if (is64 = x64 z)?
      r.x64 = is64
    else if /^\d/.test z
      r.ver = for z in z.split /\D+/ when z.length
        Number z
  r.z = [r.ver or [], [r.dist]]
  r.local = ->
    @z[1].push @x64
    @
  r

# Parse x86|x64
parse.x64 =
x64 = (str)->
  return unless /^x(\d)/.test str
  '6' == RegExp.$1

# Help strings
parse.$6 = $6 = "[x86|x64]"
parse.$ = "[#{keys.join '|'}] [n[.n[.n]]] #{$6}"
