###
Update path & chdir
###

pwd = folder '.'
seen = {}
paths = []

while not seen[pwd = pwd.abs()]
  seen[pwd] = true
  bin = folder pwd, 'node_modules/.bin'
    .abs()
  if bin.y()
    unless paths.length
      echo """
        cd "#{pwd}"
        """
    paths.push bin
  pwd = pwd.up()

if paths.length
  paths.push '%PATH%'
  echo """
    set PATH=#{paths.join ';'}
    """
