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
      k = Number k
      leaf = empty v.down
      div
        class: if v._ then 'odd' else 'even'
        -> label ->
          input
            type: 'checkbox'
            disabled: leaf
          text ' ',
            if v.dist then "#{v.dist} "
            prefix, k
          if lts = v.best.src.lts
            text ' '
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
      if leaf
        continue
      div
        class: 'indent hide'
        ->
          it v.down, "#{prefix}#{k}."
    return
