exports.title = "Show available commands abbreviations"

exports.help =
exports.cmd = ->
  echo 'Available abbreviations:'
  for k, v of cmd.a()
    echo "  #{k}\t#{v.name}\t#{v.title}"
