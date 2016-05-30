install = require './install'

@name = 'use'

@stage = 'normal'

@title = 'Use installed before Node.js version'

@args = install.args

@description = """
Make specified Node.js version active for all processes of current user
"""

@cmd = ->
  filter = install.parse().local().z
  for r in locals.list() when semver.match r.id, filter
    x = r
  throw Error 'Specified Node.js version not installed!' unless x

  echo "Using #{x.path}"
  junction.exec x.path
