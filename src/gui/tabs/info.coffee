exports.show = (pane)->
  z =
    "#{PACKAGE.mingzi}": PACKAGE.description
    Version: PACKAGE.version

  x = locals()
  z.Locals = x.length
  z.Active = junction.link
  for q in x when q.active
    z.Active = fs.BuildPath install2, q.path
    break
  z.Windows =
    sh.RegRead("HKLM:SOFTWARE:Microsoft:Windows NT:CurrentVersion:ProductName"
      .replace /:/g, '\\')
  z.WinDir = sh.ExpandEnvironmentStrings '%windir%'

  n = wsh.CreateObject "WScript.Network"
  ns =
    Computer: 'ComputerName'
    User: 'UserName'
    Domain: 'UserDomain'
  for k, v of ns
    z[k] = n[v]
  z.Platform = if x64 then 'x64' else 'x86'


  pane.innerHTML = t z

t = without ->
  table border: true, ->
    for k, v of @
      tr ->
        td k
        td v
