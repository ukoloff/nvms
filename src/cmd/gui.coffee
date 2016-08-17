exports.title = "Open GUI"

exports.cmd = (args)->
  sh.Exec fs.BuildPath fs.GetParentFolderName(wsh.ScriptFullName), 'gui.bat'
