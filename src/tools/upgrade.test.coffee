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
detect.$ =
fetch = ->
  return unless autodetect()
  touch()
  write latest()

# Path to file with latest version
path = ->
  fs.BuildPath cache, '.v'

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
  n = for n in str.split /\D+/ when n.length
    Number n
  new vfilter.ctr n

gt = (left, right)->
  0 < semver.cmp$ left, right

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
  file = fs.CreateTextFile path(), true
  file.WriteLine """
    #{version or ''}

    Start file from non-word character (eg # or ! or ; etc)
    to disable autodetection of #{PACKAGE.mingzi} new version available.
  """
  file.Close()

# Read version from file
read = ->
  s = ''
  if fs.FileExists f = path()
    s = fs.OpenTextFile f
    .ReadLine()
  s = s.replace /^\s+/, ''
  .split /\s+/, 2
  .shift()
  filter s unless /^\W/.test s

# Touch file
touch = ->
  if fs.FileExists f = path()
    # Emulate touch
    file = fs.OpenTextFile f
    s = file.ReadAll()
    file.Close()
    file = fs.CreateTextFile f, true
    file.Write s
    file.Close()
  else
    write()

# Is file old?
expired = ->
  unless fs.FileExists f = path()
    return true
  new Date - fs.GetFile(f).DateLastModified > 1000*60*60*24*3

# Autodetection allowed
autodetect = ->
  expired() and read()
