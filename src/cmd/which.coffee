@name = 'which'

@alias = 'where'

@title = 'Display path to current Node.js'

@help = """
  Shows which folder with Node.js is active for all processes of current user
  """

@cmd = ->
  for z in locals.list()
    if z.active
      echo fs.BuildPath install2, z.path
      return
  echo junction.link
