webpack = require 'webpack'
commands = require './commands'
cmdize = require './cmdize'
PACKAGE = require '../package'

@entry = "./src"

@output =
  path: "tmp",
  filename: "#{PACKAGE.mingzi}.js"

values = (map)->
  v for k, v of map

@module =
  loaders: values
    coffee:
      test: /[.]coffee$/
      loader: "coffee-loader"
    litcoffee:
      test: /[.](litcoffee|coffee[.]md)$/
      loader: "coffee-loader?literate"

brk = (s)->
  s.split ' '

@resolve =
  extensions: brk " .js .coffee .litcoffee .coffee.md"

stringify = (rec)->
  res = {}
  for k, v of rec
    res[k] = switch typeof v
      when 'string'
        JSON.stringify v
      when 'object'
        stringify v
      else
        v
  res

@plugins = values
  commands: new commands
  cmdize: new cmdize
  defines: new webpack.DefinePlugin
    PACKAGE: stringify require '../package'
  globals: new webpack.ProvidePlugin require './autoload'
