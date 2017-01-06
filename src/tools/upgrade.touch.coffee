###
File with latest available version
###

module.exports =
touch = ->
  fs.CreateTextFile path(), true

touch.$ =
path = ->
  fs.BuildPath cache, '.v'
