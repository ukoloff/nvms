exports.title = 'Install some version of Node.js'

keys = for k of dists
  k

exports.args64 = args64 = "[x86|x64]"
exports.args = "[#{keys.join '|'}] [n[.n[.n]]] #{args64}"

exports.help = """
  Install specified Node.js version (latest matching filter).

  Use `#{PACKAGE.mingzi} ls remote` to see available Node.js versions.
  """

exports.cmd = (args)->
  filter = parse args

  for r in remotes().reverse() when semver.match r.id, filter.z
    x = r
    break
  throw Error 'Specified Node.js version not found!' unless x

  x.install filter.x64

# Parse x86|x64
exports.x64 =
x64 = (str)->
  return unless /^x(\d)/.test str
  '6' == RegExp.$1

# Parse version requirements
exports.parse =
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