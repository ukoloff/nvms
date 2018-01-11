###
Self upgrade
###
echo "Upgrading #{PACKAGE.mingzi} #{PACKAGE.version}..."

require('self/upgrade/upgrade') (success)->
  unless success
    return
  dom.body.innerHTML = do require './upgrade.html'
  for z in $ 'a'
    z.onclick = ->
      defer ->
        run 0, file install2, argv0.bn()
        others.e.Quit()
      false
  return
