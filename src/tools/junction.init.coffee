###
Create Junction point for the 1st time (unless exists)
###
module.exports = ->
  unless junction.$().y()
    do junction
