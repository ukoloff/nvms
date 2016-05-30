@name = 'install'

@stage = 'normal'

@title = 'Install Node.js'

keys = for k of dists
  k

@args = "[#{keys.join '|'}] [n[.n[.n]]] [x86|x64]"

@description = """
Install specified Node.js version
"""

@cmd = ->
  echo "I"
