###
Wrapper around WSH's fs module
###

PathName = ->
PathName:: = pathname.proto

# Build prototype for child class
module.exports = (proto)->
  vmt = new PathName
  for k, v of proto
    vmt[k] = v
  vmt
