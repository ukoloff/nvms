install = require './install'

exports.alias = 'list'

exports.title = 'List available Node.js versions'

exports.args = "[remote] #{install.args}"

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
  filter = install.parse(args).local()
  for z in ll = locals() when semver.match z.id, filter.z
    n++
    echo "#{if z.active then '>' else '-'} #{z.path}"
  echo "Found: #{n} of #{ll.length} installed Node.js version" unless n
  return

remote = (args)->
  filter = install.parse args
  list = []
  for z in minors remotes() when semver.match z.id, filter.z
    if last and not semver.cmp last.major, z.major
      last.minors.push z.minor
    else
      list.push last = z
  for z in list
    echo "- #{z.dist} #{z.src.version}#{r2s ranges z.minors}"
  return

# Split version to major.minor
minors = (list)->
  for z in list
    major = z.major = z.id.slice()
    major = major[0] = major[0].slice()
    z.minors = [z.minor = major.pop()]
  list

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
