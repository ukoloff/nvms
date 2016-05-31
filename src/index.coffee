#
# Main entry point
#

try
  require './cmd'
catch error
  throw error if DEBUG
  echo "ERROR: #{error.message}"
  exit 1
