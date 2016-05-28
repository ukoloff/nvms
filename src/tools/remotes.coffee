#
# Get available distributions list
#

@list = ->
  r = []
  for k, v of dists
    if cached f = fs.BuildPath cache, "#{k}.tsv"
      tab = fs.OpenTextFile f
      .ReadAll()
    else
      url = "#{v}index.tab"
      echo "Fetching <#{url}>..."
      fs.CreateTextFile f, true
      .WriteLine tab = ajax.get url
    tab = for z in tsv tab
      parse z, k
    r = r.concat tab
  r.sort compare

cached = (f)->
  fs.FileExists(f) and
  new Date - fs.GetFile(f).DateLastModified < 1000*60*60*24

parse = (line, dist)->
  semver = for z in line.version.split /\D+/ when z.length
    Number z
  id: [semver, [dist]]
  dist: dist
  src: line

# Compare semvers (.id fields above)
@compare =
compare = (a, b)->
  cmpArrays a.id, b.id, (a, b)->
    cmpArrays a, b, (a, b)->
      if a == b
        0
      else if a < b
        -1
      else
        +1

cmpArrays = (a, b, comparator)->
  i = 0
  la = a.length
  lb = b.length
  loop
    switch Number(i<la) + 2 * Number(i<lb)
      when 0
        return 0
      when 1
        return -1
      when 2
        return +1
      else
        if v = comparator a[i], b[i]
          return v
    i++
