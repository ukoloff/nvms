@title = 'Install OpenSSL utility'

@args = "[x86|x64]"

@help = """
  Install openssl.exe precompiled for Node.js project
  """

@cmd = (args)->
  for r in remotes.list().reverse() when semver.match r.id, [[0]]
    x = r
    break
  throw Error 'Appropriate Node.js version not found!' unless x
  x64 = '6' == RegExp.$1 if /^x(\d)/i.test arg = args[0]
  r.openssl x64
  echo "Creating shortcut..."
  bat fs.GetBaseName junction.link
