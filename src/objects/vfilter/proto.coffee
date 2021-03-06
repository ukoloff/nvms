###
Node.js version filter by semver, dist, platform and LTS flag
###

# Prepare for matching local (installed) versions
exports.local = ->
  @$[1][1] = @x64
  @

# Get collection to iterate over
collection = (filter)->
  do if filter.$[1].length > 1
    require '../locals'
  else
    require '../remotes'

# Check for match
match = (self, ver)->
  semver.m ver.$, self.$

# First matching element
exports.first = ->
  for z in collection @ when match @, z
    return z

# Last matching element
exports.last = ->
  for z in collection @ by -1 when match @, z
    return z

# Loop over, return full list
exports.each = (fn)->
  list = collection @
  for z in list when match @, z
    fn z
  list
