###
Parsing Node.js version in command line
###

# Prepare for matching local (installed) versions
exports.local = ->
  @z[1].push @x64
  @

# Get collection to iterate over
collection = (filter)->
  if filter.z[1].length > 1
    locals()
  else
    remotes()

# Check for match
exports.match = (id)->
  semver.match id, @z

# First matching element
exports.first = ->
  for z in collection @ when @match z.id
    return z

# Last matching element
exports.last = ->
  for z in collection @ by -1 when @match z.id
    return z

# Loop over, return full list
exports.each = (fn)->
  for z in list = collection @ when @match z.id
    fn z
  list
