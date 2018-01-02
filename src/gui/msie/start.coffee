###
Log start
###
echo 'Started'

setInterval routine.idle, 100

do deferred ->
  fetch.versions (success)->
    echo "DONE", success
