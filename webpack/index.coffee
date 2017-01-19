webpack = require 'webpack'

sources = require './sources'
cmdize = require './cmdize'
ugly = require './ugly'

wrapAt = 108

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
    styl:
      test: /[.]styl$/
      loader: "#{require.resolve './raw'}?wrap=#{wrapAt}!stylus?compress"

brk = (s)->
  s.split ' '

@resolve =
  extensions: brk " .js .coffee .litcoffee .coffee.md .styl"
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
      max_line_len: wrapAt
      keep_quoted_props: true
    compress:
      warnings: false
  cmdize: cmdize()
  defines: new webpack.DefinePlugin
    PACKAGE: stringify require '../package'
  globals: new webpack.ProvidePlugin sources.globals
