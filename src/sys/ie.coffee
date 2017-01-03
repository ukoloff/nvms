###
Start MSIE
###
module.exports = ->
  ie = activeX "InternetExplorer.Application"
  ie.ToolBar = false
  ie.StatusBar = false
  ie.Visible = true
  ie.Navigate 'about:blank'
  wsh.Sleep 100 while ie.Busy
  ie
