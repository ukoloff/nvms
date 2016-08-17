exports.alias = 'where'

exports.title = 'Display path to current Node.js version'

exports.help = """
  Shows which folder with Node.js is active for all processes of current user
  """

exports.cmd = ->
  for z in locals()
    if z.active
      echo fs.BuildPath install2, z.path
      return
  echo junction.link
