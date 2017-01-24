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
    td PACKAGE.description
  row ->
    th 'Version'
    td PACKAGE.version

  hdr = (name)->
    row -> td colspan: 2, -> label ->
      input
        type: 'checkbox'
        checked: true
      text ' ', name

  hdr 'Windows'
  row ->
    th 'Version'
    td @sh.RegRead "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\ProductName"
  row ->
    th 'Path'
    td @sh.ExpandEnvironmentStrings '%windir%'
  row ->
    th 'Platform'
    td 'x', @x64 and 64 or 86

  hdr 'Node.js'
