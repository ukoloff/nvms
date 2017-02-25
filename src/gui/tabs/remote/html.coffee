###
Remotes tab template
###
module.exports = without ->
  empty = (rec)->
    for k of rec
      return
    true
  single = (rec)->
    for k of rec
      return if result
      result = k
    if result
      result + ' '
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
          text ' ', single(v.dists), prefix, k
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
