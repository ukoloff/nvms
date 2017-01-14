exports.t = "Show available commands abbreviations"

exports._ = '[word]'

exports.h =
exports.$ = (args)->
  echo 'Available abbreviations:'
  cmdz = require '.'
  for k, v of exports.A.a args[0]
    echo "  #{k}\t#{v}\t#{cmdz[v].t}"
  return
