###
Remove setup files
###
magic = "#{PACKAGE.name}-dist"
ext = ".source"
src = argv0.up()

module.exports = ->
  unless magic == src.bn().substring 0, magic.length
    return ->

  ini = file "#{argv0}#{ext}"

  unless ini.y()
    return prepare

  wsh.Sleep 3000
  # Actual remove
  folder me2 = ini.load()
  .rm true

  src.rm true

  exit 0

prepare = ->
  tmp = folder cache, "#{magic}-#{rnd 8}"
  .rm true
  .mk()
  argv0.cp me2 = file tmp, argv0.bn()
  file "#{me2}#{ext}"
  .save src
  sh.Run """
    "#{me2}"
  """, 1
