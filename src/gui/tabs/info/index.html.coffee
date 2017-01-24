###
Info tab template
###
module.exports = without -> table ->
  n = 0
  row = ->
    list = [].slice.apply arguments
    list.unshift class: n++ & 1 and 'odd' or 'even'
    tr.apply tr, list
  row ->
    th PACKAGE.mingzi
    td -> a
      href: PACKAGE.homepage
      target: '_blank'
      PACKAGE.description
  row ->
    th 'Version'
    td PACKAGE.version

  hdr = (name)->
    row -> td colspan: 2, -> label ->
      input
        type: 'checkbox'
        checked: true
      text ' ', name

  platform = (x64)->
    td "x", x64 and 64 or 86

  hdr 'Node.js'
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
  hdr 'OS'
  key = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\"
  row ->
    th 'Name'
    td @sh.RegRead "#{key}ProductName"
  row ->
    th 'Version'
    td @sh.RegRead "#{key}CurrentVersion"
  row ->
    th 'SP'
    td @sh.RegRead "#{key}CSDVersion"
  row ->
    th 'Platform'
    platform @x64
  row ->
    th 'Owner'
    td @sh.RegRead "#{key}RegisteredOwner"
  row ->
    th 'Path'
    td @sh.RegRead "#{key}SystemRoot"

