@name = 'install'

@stage = 'normal'

@title = 'Install Node.js'

keys = for k of dists
  k

@args = "[#{keys.join '|'}] [n[.n[.n]]] [x86|x64]"

@description = """
Install specified Node.js version.

Use `#{PACKAGE.mingzi} ls remote` to see available Node.js versions.
"""

@cmd = (args)->
  filter = parse args

  for r in remotes.list().reverse() when semver.match r.id, filter.z
    x = r
    break
  throw Error 'Specified Node.js version not found!' unless x

  x.install filter.x64

# Parse version requirements
@parse =
parse = (args = [])->
  ks = new abbrev
  ks.add
    words: keys
  r = {}
  for z in args
    if x = ks.is z
      r.dist = x
    else if /^x(\d)/.test z
      r.x64 = /^6/.test RegExp.$1
    else if /^\d/.test z
      r.ver = for z in z.split /\D+/ when z.length
        Number z
  r.z = [r.ver or [], [r.dist]]
  r.local = ->
    @z[1].push @x64
    @
  r
