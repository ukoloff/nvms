###
Check whether update is available
###

module.exports =
exports = routine()
.s ->
  if expired() and read()
    []
  else
    false
.a ->
  write latest()
  fetch.versions()
  return
.$()

# Is file old?
expired = ->
  !path().ok 1000*60*60*24*3

# Path to file with latest version
path = ->
  file cache, '.v'

# GitHub API URI to fetch tags list
api = ->
  "#{PACKAGE.homepage
  .replace /// // ///, '$&api.'
  .replace /// \w/ ///, '$&repos/'
  }/tags?per_page=8"

# Build vfilter from string
filter = (str)->
  vfilter semver str

# Convert vfilter back to string
vvv = (filter)->
  if filter
    filter.$[0].join '.'

# Get most fresh tag from GitHub
latest = ->
  tags = json2 ajax api()
  for tag, i in tags by -1
    tags[i] = filter tag.name
  vvv tags.sort(semver.$).pop()

# Save to file
write = (version)->
  path().save version or '', """


    Start file from non-word character (eg # or ! or ; etc)
    to disable autodetection of #{PACKAGE.mingzi} new version available.

  """
  return

# Read version from file
read = ->
  s = ''
  f = path()
  if f.y()
    s = f.load()
  s = s.replace /^\s+/, ''
  .split /\s+/, 2
  .shift()
  unless /^\W/.test s
    filter s

# Upgrade info
exports.u = (empty)->
  if empty
    rems = []
  else
    self = read()
    rems = remotes true
      .reverse()
  reorganize
    self:
      n: PACKAGE.mingzi
      v: vvv self
      a: self and 0 < semver.$ self, filter PACKAGE.version
    Node: node2upgrade rems[0]
    LTS: node2upgrade LTS rems

node2upgrade = (remote)->
  v: vvv remote
  a: !remotes.L remote
  r: remote

LTS = (rems)->
  for r in rems when r.src.lts
    return r
  return

reorganize = (info)->
  result = {}
  for k, v of info
    v.K = k
    v.N = v.n or k
    result[v.k = k.toLowerCase()] = v
  result
