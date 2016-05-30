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
  for r in remotes.list() when semver.match r.id, z.z
    x = r
  throw Error 'Specified Node.js version not found!' unless x
  ver = "#{x.dist}-#{x.src.version}-x#{if z.x64 then 64 else 86}"
  msi = "#{ver}.msi"
  uri  = "#{dists[x.dist]}#{x.src.version}/#{
    if z.x64 and !x.id[0][0] then 'x64/' else ''
    }#{msi}"
  echo "Fetching <#{uri}>..."
  ajax.dl uri, fs.BuildPath cache, msi

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
  r.x64 ?= x64
  r.z = [r.ver or [], [r.dist]]
  r
