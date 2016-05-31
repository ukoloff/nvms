@name = 'which'

@alias = 'where'

@stage = 'normal'

@title = 'Display path to current Node.js'

@description = """
Shows which folder with Node.js is active for all processes of current user
"""

@cmd = ->
  for z in locals.list()
    if z.active
      echo z.path
      return
  echo junction.link
