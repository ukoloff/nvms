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
    result += ' ' if result
  n = 0
  do it = (tree = @, prefix = '')->
    for k, v of tree
      k = Number k
      leaf = empty v.down
      myN = ++n
      div
        class: if myN & 1 then 'odd' else 'even'
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
        -> it v.down, "#{prefix}#{k}."
      if n - myN & 1
        n++
