###
Journal tab template
###
module.exports = without ->
  t = @t
  while t.length < 4
    t = ' ' + t
  div
    class: if @n & 1 then 'odd' else 'even'
    -> tt -> raw t.replace /\s/g, '&nbsp;'
    @$
