#
# TSV parser
#
module.exports =
tsv = (s)->
  a2o arrays s

arrays = (s)->
  L = ''
  F = []
  res = []

  test = (re)->
    re.test s
    L += RegExp.leftContext
    s = RegExp.rightContext

  while s.length
    if q
      test /""?|$/
      switch RegExp.lastMatch
        when '"'
          q = false
          continue
        when '""'
          L += '"'
          continue
        when ''
          eol = true
    else
      test /\t|"|\r\n?|\n|$/
      if '"' == RegExp.lastMatch
        q = true
        continue
      eol = "\t" != RegExp.lastMatch
    F.push L
    L = ''
    continue unless eol
    res.push F
    F = []
  res

a2o = (arr)->
  res = []
  for line in arr when line.length > 1 or line[0].length > 0
    unless F
      F = line
      continue
    res.push rec = {}
    for n, i in F
      rec[F] = line[i]
  res
