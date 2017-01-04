###
Parsing Node.js version in command line
###

# Prepare for matching local (installed) versions
exports.local = ->
  @z[1].push @x64
  @

# Check for match
exports.match = (id)->
  semver.match id, @z
