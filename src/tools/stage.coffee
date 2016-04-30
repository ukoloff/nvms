junction = require './junction'

module.exports = if junction.path.exists()
  'normal'
else
  'pre'
