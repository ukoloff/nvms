###
Journal tab template
###
module.exports = without ->
  div class: @n & 1 and 'odd' or 'even', ->
    b @n
    text '. ', new Date
