#
# Get available distributions list
#

@list = (force)->
  r = []
  for k, v of dists
    f = fs.BuildPath cache, "#{k}.tsv"
    if not force and cached f
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
  r.sort semver.cmpi

cached = (f)->
  fs.FileExists(f) and
  new Date - fs.GetFile(f).DateLastModified < 1000*60*60*24

parse = (line, dist)->
  semver = for z in line.version.split /\D+/ when z.length
    Number z
  id: [semver, [dist]]
  dist: dist
  src: line
