exports.alias = 'list'

exports.title = 'List available Node.js versions'

exports.args = "[remote] #{vfilter.$}"

exports.help = """
  List already installed or all available to install Node.js versions
  """

exports.cmd = (args)->
  if /^r/i.test args[0]
    remote args.slice 1
  else
    local args

local = (args)->
  n = 0
  locals =
  vfilter args
  .local()
  .each (z)->
    n++
    echo (if z.active then '>' else '-'), z.path
  unless n
    echo "Listed none of #{locals.length} installed Node.js version(s)"

remote = (args)->
  list = []
  last = 0

  vfilter args
  .each (z)->
    minors z
    if last and not semver.cmp last.major, z.major
      last.minors.push z.minor
    else
      list.push last = z
  for z in list
    echo "- #{z.dist} #{z.src.version}#{r2s ranges z.minors}"
  return

# Split version to major.minor
minors = (remote)->
  major = remote.major = remote.id.slice()
  major = major[0] = major[0].slice()
  remote.minors = [remote.minor = major.pop()]

# Combine list of minors into list of ranges
ranges = (list)->
  res = []
  for n in list
    if last and last.b + 1 == n
      last.b = n
    else
      res.push last =
        a: n
        b: n
  res

# Convert ranges list to string
r2s = (ranges)->
  r = for r, i in ranges
    "#{if i then r.a else ''}#{if r.b > r.a then ' - ' + r.b else ''}"
  r.join ', '
