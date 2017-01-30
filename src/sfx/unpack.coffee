###
Unpack SFX files
###
me = argv0.bn()
for f in argv0.up().files()
  if f.bn() == me
    continue
  if f.ext().toLowerCase() != 'zip'
    echo "Copying:", f.bn()
    try f.mv file install2, f.bn()
    continue
  echo "Extracting:", name = f.n()
  (if name == PACKAGE.mingzi
    argv0.up()
  else
    folder(install2, f.n()).mk()
  )
  .ns()
  .copyHere f.ns().Items(), 16 # Respond with "Yes to All" for any dialog box that is displayed
  f.rm()
