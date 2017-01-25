###
Info tab template
###
module.exports = without -> table ->
  n = 0
  row = (child)->
    tr
      class: n++ & 1 and 'odd' or 'even'
      child
  row ->
    th PACKAGE.mingzi
    td -> a
      href: PACKAGE.homepage
      target: '_blank'
      PACKAGE.description
  row ->
    th 'Version'
    td PACKAGE.version

  hdr = (name, content)->
    tbody -> row -> td colspan: 2, -> label ->
      input
        type: 'checkbox'
        checked: true
      text ' ', name
    tbody content

  platform = (x64)->
    td "x", if x64 then 64 else 86

  hdr 'Node.js', ->
    for z in @l when z.active
      active = z
      break
    row ->
      th 'Active'
      td active?.$[0].join('.') or '-'
    if active
      row ->
        th 'Flavour'
        td -> (if url = @d[active.dist] then a else notag)
          href: url.replace /// (\w)/.* ///, '$1'
          target: '_blank'
          active.dist
      row ->
        th 'Platform'
        platform active.x64
    row ->
      th 'Path'
      td '', active?._() or @$
      # alert active?._()

  hdr 'OS', ->
    keyvals = (rec)->
      for k, v of rec
        row ->
          th k
          td @sh.RegRead "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\#{v}"
      return
    keyvals
      Name: 'ProductName'
      Version: 'CurrentVersion'
      SP: 'CSDVersion'
    row ->
      th 'Platform'
      platform @x64
    keyvals
      Owner: 'RegisteredOwner'
      Path: 'SystemRoot'

  hdr 'Names', ->
    row ->
      th 'Host'
      td @n.ComputerName
    row ->
      th 'User'
      td @n.UserName
    row ->
      th 'Domain'
      td @n.UserDomain

