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
    vvv ver

# Ping for new version
# To be run in the backgroung
exports.p = ->
  return unless exports()
  write() # Emulate touch
  write latest()
  return

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
