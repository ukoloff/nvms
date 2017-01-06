###
Check whether update is available
###

module.exports = (arg)->
  if false == arg
    do check
  else
    fetch arg

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
  0 < semver.cmpi left, right

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
  fs.CreateTextFile path(), true
  .WriteLine """
    #{version or ''}

    Start file from non-word character (eg # or ! or ; etc)
    to disable autodetection of #{PACKAGE.mingzi} new version available.
  """

# Magic cookie to force version fetch
key = ->
  ">#{PACKAGE.version}?"

# Fetch latest version from GitHub & store
fetch = (arg)->
  return if arg != key()
  return unless read()
  write latest()
  true

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
