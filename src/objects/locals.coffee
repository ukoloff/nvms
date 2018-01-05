###
List installed versions
###

re = /^(\w+)-\D*(\d+(?:[.]\d+)+)-x(\d)/

module.exports =
exports = ->
  ltSet = {}
  for r in remotes true when r.src.lts
    ltSet[r.$[0].join '.'] = r.src.lts

  list = []
  tmp = rndFile junction.$
  for f in install2.folders() when re.test f.bn()
    list.push
      active: tmp and file(f, tmp.bn()).y()
      path: RegExp.$_
      dist: dist = RegExp.$1
      x64: is64 = '6' == RegExp.$3
      lts: lts = ltSet[(ver = semver RegExp.$2).join '.']
      $: [ver, [dist, is64], [!!lts]]
  tmp?.rm()

  list.sort semver.$

rndFile = (path)->
  return unless path.y()
  i = 16
  while --i
    p = file path, rnd 15
    if p.y()
      continue
    try
      p.create true
      .Close()
      return p

# Active
exports.a = (list = exports())->
  for loc in list when loc.active
    return loc
  return

# Use
exports.u = (self)->
  junction self.path

# Full path
exports.f = (self = do exports.a)->
  if self
    folder install2, self.path
  else
    junction.$

rimraf = routine()
.a (path)->
  folder install2, path
    .rm true
.$()

# Remove installed version
exports.r = routine()
.s (self)->
  unless self
    return false
  echo "Removing:", self.path
  if self.active
    junction()
  self.path
.a rimraf
.$()

# Uninstall everything
exports.b = routine()
.s ->
  echo "Cleaning PATH"
  addpath()
  junction false
  echo "Removing:", install2
  ''
.a rimraf
.$()
