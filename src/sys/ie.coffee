module.exports = ->
  ie = new ActiveXObject "InternetExplorer.Application"
  ie.Visible = true
  ie.Navigate 'about:blank'
  WScript.Sleep 100 while ie.Busy
  ie
