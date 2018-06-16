###
Unused GitHub API
###

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
