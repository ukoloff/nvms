###
Check whether update is available
###
locations = require './locations'

module.exports =
exports = routine()
.s ->
  if expired() and read()
    do touch
    []
  else
    false
.a ->
  try write latest()
  fetch.versions()
  return
.$()

# Is file old?
expired = ->
  !path().ok 1000*60*60*24*0.9

# Path to file with latest version
path = ->
  file cache, '.v'

# Build vfilter from string
filter = (str)->
  vfilter semver str

# Convert vfilter back to string
vvv = (filter)->
  if filter
    filter.$[0].join '.'

# Get freshest version available
latest = ->
  for uri in locations 'version'
    try return vvv filter ajax uri
  return ''

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
  a: remote and !remotes.L remote
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

touch = ->
  try
    f = path()
      .open 8, true
    f.Write '\n'
    f.Close()
  return
