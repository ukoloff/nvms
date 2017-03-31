###
Template for "popup"
###
module.exports = without (options, title)->
  span
    class: 'ask'
    title
    ' '
    ->
      keys = 0
      for k of options
        keys++
      for k, v of options
        keys--
        if next
          text if keys
            ', '
          else
            ' or '
        next = 1
        a
          href: '#'
          title: v
          k
      text '?'
