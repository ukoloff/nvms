###
GitHub API
###
exports.api = ->
  "#{PACKAGE.homepage
  .replace /// // ///, '$&api.'
  .replace /// \w/ ///, '$&repos/'
  }/tags?per_page=8"
