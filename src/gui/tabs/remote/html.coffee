###
Remotes tab template
###
module.exports = without ->
  empty = (rec)->
    for k of rec
      return
    true
  n = 0
  do it = (tree = @, prefix = '')->
    for k, v of tree
      k = Number k
      leaf = empty v.down
      div
        class: if n++ & 1 then 'odd' else 'even'
        -> label ->
          input
            type: 'checkbox'
            disabled: leaf
          text ' ',
            if v.dist then "#{v.dist} "
            prefix, k
          if v.n > 1
            span
              class: 'hint'
              v.n
        -> i ' // ', v.best.$[0].join '.'
      if leaf
        continue
      div
        class: 'indent hide'
        ->
          n0 = n
          it v.down, "#{prefix}#{k}."
          if n0 - n & 1
            n++
    return
