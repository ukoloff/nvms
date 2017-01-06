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
  for tag in json2 ajax api() by -1
    tag.name

filter = (str)->
  n = for n in str.split /\D+/ when n.length
    Number n
  new vfilter.ctr n

gt = (left, right)->
  0 < semver.cmpi left, right

latest = ->
  me = filter PACKAGE.version
  max = 0
  for tag in tags() by -1
    tag = filter tag
    continue unless gt tag, me
    if !max or gt tag, max
      max = tag
  max.$[0].join '.' if max
