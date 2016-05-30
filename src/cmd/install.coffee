@name = 'install'

@stage = 'normal'

@title = 'Install Node.js'

keys = for k of dists
  k

@args = "[#{keys.join '|'}] [n[.n[.n]]] [x86|x64]"

@description = """
Install specified Node.js version
"""

@cmd = ->
  z = parse()
  echo dump z

# Parse version requirements
@parse =
parse = (args = argv.slice 1)->
  ks = abbrev.apply abbrev, keys
  r = {}
  for z in args
    if x = ks[z]
      r.dist = x
    else if /^x(\d)/.test z
      r.x64 = /^6/.test RegExp.$1
    else if /^\d/.test z
      r.ver = for z in z.split /\D+/ when z.length
        Number z
  r.z = [r.ver or [], [r.dist]]
  r
