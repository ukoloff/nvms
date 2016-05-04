webpack = require 'webpack'
commands = require './commands'
cmdize = require './cmdize'

values = (map)->
  v for k, v of map

brk = (s)->
  s.split ' '

stringify = (rec)->
  res = {}
  for k, v of rec
    res[k] = if 'string'==typeof v
      JSON.stringify v
    else
      v
  res

@entry = "./src"

@output =
  path: "tmp",
  filename: "nvms.js"

@module =
  loaders: values
    coffee:
      test: /[.]coffee$/
      loader: "coffee-loader"
    litcoffee:
      test: /[.](litcoffee|coffee[.]md)$/
      loader: "coffee-loader?literate"

@resolve =
  extensions: brk " .js .coffee .litcoffee .coffee.md"

@plugins = values
  commands: new commands
  cmdize: new cmdize
  defines: new webpack.DefinePlugin
    PACKAGE: stringify require '../package'