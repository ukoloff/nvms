###
GitHub API
###
api = ->
  "#{PACKAGE.homepage
  .replace /// // ///, '$&api.'
  .replace /// \w/ ///, '$&repos/'
  }/tags?per_page=8"

# Return available tags
module.exports = ->
  for tag in json2 ajax api()
    tag.name
