exports.q = 'where'

exports.t = 'Display path to current Node.js version'

exports.h = """
  Shows which folder with Node.js is active for all processes of current user
  """

exports.$ = ->
  for z in locals() when z.active
    echo z._()
    return
  echo junction.$
  return
