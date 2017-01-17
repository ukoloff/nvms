###
Check whether update is available
###

module.exports = exports = ->
  # Allow to ping for new version?
  expired() and read()

# Is new version available?
exports.v = ->
  ver = read()
  if ver and 0 < semver.$ ver, filter PACKAGE.version
    ver.$[0].join '.'

# Ping for new version
# To be run in the backgroung
exports.p = ->
  return unless exports()
  touch()
  write latest()
  return

# Path to file with latest version
path = ->
  file cache, '.v'

# GitHub API URI to fetch tags list
api = ->
  "#{PACKAGE.homepage
  .replace /// // ///, '$&api.'
  .replace /// \w/ ///, '$&repos/'
  }/tags?per_page=8"

filter = (str)->
  new vfilter._ semver str

# Get most fresh tag from GitHub
latest = ->
  tags = json2 ajax api()
  for tag, i in tags by -1
    tags[i] = filter tag.name
  tag =
  tags.
  sort semver.$
  .pop()
  if tag
    tag.$[0].join '.'

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
  filter s unless /^\W/.test s

# Touch file
touch = ->
  f = path()
  unless f.y()
    write()
    return
  # Emulate touch
  f.save f.load()
  return

# Is file old?
expired = ->
  !path().ok 1000*60*60*24*3
