commands = require './commands'

values = (map)->
  v for k, v of map

module.exports = 
  entry: "./src"
  output: 
    path: "tmp",
    filename: "nvms.js"
  module: 
    loaders: values
      coffee:
        test: /[.]coffee$/
        loader: "coffee-loader"
      json:
        test: /[.]json$/
        loader: "json-loader"
  resolve: 
    extensions: ["", ".js", ".json", ".coffee"]
  plugins: values
    commands: new commands
