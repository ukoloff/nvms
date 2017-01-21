###
List installed versions
###

re = /^(\w+)-\D*(\d+(?:[.]\d+)*)-x(\d+)/

module.exports = ->
  list = []
  tmp = rndFile junction.$
  for f in install2.folders() when re.test f.bn()
    list.push new Local if tmp then file(f, tmp.bn()).y()
  tmp?.rm()
  list.sort semver.$

rndFile = (path)->
  return unless path.y()
  i = 16
  while --i
    p = file path, r = rnd 15
    if p.y()
      continue
    try
      p.create true
      .Close()
      return p

# Most data passed via RegExp
Local = (active)->
  @active = active
  @path = RegExp.$_
  @dist = dist = RegExp.$1
  ver = semver RegExp.$2
  @$ = [ver, [dist, @x64 = /^6/.test RegExp.$3]]
  return

Local:: = local.proto
