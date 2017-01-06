###
Check whether update is available
###

# GitHub API URI
api = ->
  "#{PACKAGE.homepage
  .replace /// // ///, '$&api.'
  .replace /// \w/ ///, '$&repos/'
  }/tags?per_page=8"

# Return available tags
tags = ->
  for tag in json2 ajax api()
    tag.name
