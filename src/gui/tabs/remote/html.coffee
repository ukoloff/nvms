###
Remotes tab template
###
module.exports = without (tree)->
  empty = (rec)->
    for k of rec
      return
    true
  for k, v of tree
    leaf = empty v.down
    div
      class: if v._ then 'odd' else 'even'
      -> label ->
        input
          type: 'checkbox'
          disabled: leaf
        text ' ',
          if v.dist then "#{v.dist} "
          (Number n for n in v.best.$[0].slice 0, v.d).join '.'
        if lts = v.best.src.lts
          i
            class: 'lts'
            title: 'Long Term Support'
            lts
        if v.n > 1
          span
            class: 'hint'
            v.n
      -> span class: 'ask', ->
        a
          href: '#'
          title: "#{PACKAGE.mingzi} install #{v.best.dist} #{v.best.$[0].join '.'}"
          'install'
        if v.best.$[0][0]
          return
        text ' or '
        a
          href: '#'
          title: "#{PACKAGE.mingzi} openssl"
          'openssl'
    unless leaf
      div class: 'indent'
  return
