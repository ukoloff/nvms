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
      div
        class: 'zebra'
        -> label ->
          input
            type: 'checkbox'
          text ' ', single(v.dists), prefix + k, ': '
          a
            href: '#'
            title: "#{PACKAGE.mingzi} install #{
              v.remotes[0].dist} #{v.remotes[0].id[0].join '.'}"
            'install'
          if !prefix and '0'==k
            text ' or '
            a
              href: '#'
              title: "#{PACKAGE.mingzi} openssl"
              'openssl'
      continue if empty v.down
      do div
      div
        class: 'indent'
        -> it v.down, "#{prefix}#{k}."
