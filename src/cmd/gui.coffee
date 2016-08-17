exports.title = "Open GUI"

exports.cmd = (args)->
  sh.Run fs.BuildPath fs.GetParentFolderName(wsh.ScriptFullName), 'gui.bat'
