exports.title = "Upgrade #{PACKAGE.mingzi} itself"

exports.help = """
  Download and install latest version of #{PACKAGE.mingzi}
  """

exports.cmd = ->
  name = fs.GetFileName wsh.ScriptFullName
  url = "#{PACKAGE.homepage}/raw/dist/bin/#{name}"
  dst = fs.BuildPath install2, name
  echo "Fetching:", url
  ajax.dl url, dst
  ver = sh.Exec """
  "#{dst}" version
  """
  .StdOut.ReadAll().replace /^\s+|\s+$/g, ''
  echo "#{PACKAGE.mingzi} upgraded to #{ver}"
