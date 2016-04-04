webpack = require 'webpack'
commands = require './commands'

values = (map)->
  v for k, v of map

brk = (s)->
  s.split ' '

@entry = "./src"

@output =
  path: "tmp",
  filename: "nvms.js"

@module =
  loaders: values
    coffee:
      test: /[.]coffee$/
      loader: "coffee-loader"
    json:
      test: /[.]json$/
      loader: "json-loader"

@resolve =
  extensions: brk " .js .json .coffee"

@plugins = values
  commands: new commands
  defines: new webpack.DefinePlugin
    PACKAGE: require '../package'
