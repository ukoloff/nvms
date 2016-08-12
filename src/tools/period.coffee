#
# Trailing dot in command line parameters
#

module.exports = (args)->
  return unless '.' == args[args.length - 1]
  args.pop()
  true
