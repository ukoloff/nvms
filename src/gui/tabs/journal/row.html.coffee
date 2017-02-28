###
Journal tab template
###
module.exports = without ->
  div
    class: if @n & 1 then 'odd' else 'even'
    @$
