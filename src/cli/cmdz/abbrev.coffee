exports.t = "Show available commands abbreviations"

exports._ = '[word]'

exports.h =
exports.$ = (args)->
  echo 'Available abbreviations:'
  cmdz = require '.'
  a = exports.A
  a = a.a(args[0]) or a.a()
  for k, v of a
    echo "  #{k}\t#{v}\t#{cmdz[v].t}"
  return
