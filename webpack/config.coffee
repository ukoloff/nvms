webpack = require 'webpack'

sources = require './sources'
ugly = require './ugly'

@entry = sources.entry

@output =
  path: "tmp",
  filename: "[name].js"

values = (map)->
  v for k, v of map

@module =
  loaders: values
    coffee:
      test: /[.]coffee$/
      loader: "coffee"
    litcoffee:
      test: /[.](litcoffee|coffee[.]md)$/
      loader: "coffee?literate"
    glob:
      # coffee above will also apply after this
      test: /[\/\\]index[.]coffee$/
      loader: require.resolve './glob'
    yml:
      test: /[.]ya?ml$/
      loader: require.resolve './yaml'

brk = (s)->
  s.split ' '

@resolve =
  extensions: brk " .js .coffee .litcoffee .coffee.md"
  alias:
    self: sources.root

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
  ugly: ugly
    output:
      max_line_len: 128
    compress:
      warnings: false
  cmdize: do require './cmdize'
  fresh: do require './fresh'
  defines: new webpack.DefinePlugin
    PACKAGE: stringify require '../package'
    BUILD_ID: JSON.stringify require('./rnd') 5
  globals: new webpack.ProvidePlugin sources.globals
