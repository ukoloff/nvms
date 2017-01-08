exports.title = "Show available commands abbreviations"

exports.args = '[word]'

exports.help =
exports.$ = (args)->
  echo 'Available abbreviations:'
  for k, v of cmd.a args[0]
    echo "  #{k}\t#{v.name}\t#{v.title}"
