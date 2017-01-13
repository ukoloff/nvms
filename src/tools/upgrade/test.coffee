###
Check whether update is available
###

module.exports =
detect = ->
  if autodetect()
    zog 'upgrade'
  ver = read()
  if ver and gt ver, filter PACKAGE.version
    ver.$[0].join '.'

# Fetch latest version from GitHub & store
detect.$ = ->
  return unless autodetect()
  touch()
  write latest()

# Path to file with latest version
path = ->
  file cache, '.v'

# GitHub API URI
api = ->
  "#{PACKAGE.homepage
  .replace /// // ///, '$&api.'
  .replace /// \w/ ///, '$&repos/'
  }/tags?per_page=8"

# Return available tags
tags = ->
  json2 ajax api()

filter = (str)->
  new vfilter._ semver str

gt = (left, right)->
  0 < semver.$ left, right

# Get most fresh tag from GitHub
latest = ->
  max = 0
  for tag in tags() by -1
    tag = filter tag.name
    if !max or gt tag, max
      max = tag
  max.$[0].join '.' if max

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

# Is file old?
expired = ->
  !path().ok 1000*60*60*24*3

# Autodetection allowed
autodetect = ->
  expired() and read()
