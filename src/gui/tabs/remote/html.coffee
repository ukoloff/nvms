###
Remotes tab template
###
module.exports = without ->
  empty = (rec)->
    for k of rec
      return
    true
  do it = (tree = @, prefix = '')->
    for k, v of tree
      leaf = empty v.down
      div prefix, k
      if leaf
        continue
      div
        class: 'indent hide'
        -> it v.down, "#{prefix}#{k}."
