@name = 'list'

@alias = 'ls'

@stage = 'normal'

@title = 'List available Node.js versions'

@args = "[remote]"

@description = """
List already installed or all available to install Node.js versions
"""

@cmd = ->
  if /^r/i.test argv[1]
    do remote
  else
    do local

local = ->
  echo "L"

remote = ->
  x = remotes.list()
  x = for z in x
    "#{z.dist}-#{z.src.version}"
  echo x.join ' '
  return
