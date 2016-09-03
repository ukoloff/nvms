module.exports = without ->
  empty = (rec)->
    return for k of rec
    true
  single = (rec)->
    for k of rec
      return if result
      result = k
    result += ' ' if result
  do it = (tree = @, prefix = '')->
    for k, v of tree
      leaf = empty v.down
      div
        class: 'zebra'
        -> label ->
          input
            type: 'checkbox'
            disabled: leaf
          text ' ', single(v.dists), prefix + k, ': '
          a
            href: '#'
            title: "#{PACKAGE.mingzi} install #{
              v.best.dist} #{v.best.id[0].join '.'}"
            'install'
          if 0 == v.best.id[0][0]
            text ' or '
            a
              href: '#'
              title: "#{PACKAGE.mingzi} openssl"
              'openssl'
      continue if leaf
      div
        class: 'indent hide'
        -> it v.down, "#{prefix}#{k}."
      do div
