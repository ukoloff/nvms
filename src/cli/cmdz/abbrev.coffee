exports.t = "Show available commands abbreviations"

exports._ = '[word]'

exports.h =
exports.$ = (args)->
  echo 'Available abbreviations:'
  for k, v of (require '../cmd').a args[0]
    echo "  #{k}\t#{v.n}\t#{v.t}"
  return
