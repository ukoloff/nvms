###
Remove setup files
###
module.exports = ->
  fire = "#{PACKAGE.name}-dist" == (src = argv0.up()).bn()

  unless wsh.Interactive
    # Running in the background
    if fire and 1 == argv.length and uniqid() == argv[0]
      wsh.Sleep 3000
      try src.rm true
    exit()

  # Normal run
  if fire
    ->
      run 0, 'wscript', '//B', '//E:JScript', argv0, uniqid()
      return
  else
    ->
