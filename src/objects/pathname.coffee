###
Wrapper around WSH's fs module
###

PathName = ->
PathName:: = pathname.proto

# Build constructor for child class
module.exports = (proto)->
  Path = (paths)->
    join @, paths
    return
  Path:: = vmt = new PathName
  for k, v of proto
    vmt[k] = v
  ->
    new Path arguments

# Initialize path by joining components
join = (self, components)->
  path = ''
  for z in components
    path = fs.BuildPath path, z
  self._ = path
  return
