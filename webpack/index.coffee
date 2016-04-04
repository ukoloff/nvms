webpack = require 'webpack'
commands = require './commands'

values = (map)->
  v for k, v of map

brk = (s)->
  s.split ' '

stringify = (rec)->
  for k, v of rec when 'string'==typeof v
    rec[k] = JSON.stringify v
  rec

@entry = "./src"

@output =
  path: "tmp",
  filename: "nvms.js"

@module =
  loaders: values
    coffee:
      test: /[.]coffee$/
      loader: "coffee-loader"

@resolve =
  extensions: brk " .js .coffee"

@plugins = values
  commands: new commands
  defines: new webpack.DefinePlugin
    PACKAGE: stringify require '../package'
