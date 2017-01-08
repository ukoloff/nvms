exports.q = 'list'

exports.t = 'List available Node.js versions'

exports._ = "[remote] #{vfilter.$}"

exports.h = """
  List already installed or all available to install Node.js versions
  """

exports.$ = (args)->
  if /^r/i.test args[0]
    remote args.slice 1
  else
    local args

local = (args)->
  n = 0
  total =
  vfilter args
  .local()
  .each (z)->
    n++
    echo (if z.active then '>' else '-'), z.path
  .length
  echo "Listed: #{n} of #{total} installed Node.js version(s)"

remote = (args)->
  list = []
  last = 0
  n = 0

  total =
  vfilter args
  .each (z)->
    n++
    minors z
    if last and not semver.cmp last.mjr, z.mjr
      last.mnr.push z.mnr[0]
    else
      list.push last = z
  .length
  for z in list
    echo "- [#{z.mnr.length}]\t#{z.dist} #{z.src.version}#{r2s ranges z.mnr}"
  echo "Listed: #{list.length} line(s) of #{n} version(s) of #{total} total"

# Split version to major.minor
minors = (remote)->
  remote.mjr = $ = []
  for arr in remote.$
    $.push arr.slice()
  remote.mnr = [$[0].pop()]

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
