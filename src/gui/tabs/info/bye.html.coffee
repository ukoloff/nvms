###
Goodbye page
###
module.exports = without -> div class: 'splash', ->
  for line in @.split '\n' when line
    div line
  return
