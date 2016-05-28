@name = 'list'

@alias = 'ls'

@stage = 'normal'

@title = 'List available Node.js versions'

@args = "[remote]"

@description = """
List already installed or all available to install Node.js versions
"""

@cmd = ->
  if /^r/i.test argv[1]
    do remote
  else
    do local

local = ->
  echo "L"

remote = ->
  list = []
  for z in minors remotes.list()
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
