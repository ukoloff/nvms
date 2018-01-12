###
Remove setup files
###
module.exports = ->
  src = argv0.up()

  unless "#{PACKAGE.name}-dist" == src.bn()
    return ->

  if wsh.Interactive
    return ->
      run 0, 'wscript', '//B', '//E:JScript', argv0
      return

  wsh.Sleep 3000

  try src.rm true
  finally
    exit()
  return
