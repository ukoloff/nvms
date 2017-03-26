###
Run process
###
module.exports = exports = ->
  cmdline = ''
  wait = false
  show = 1
    # 0: hide
    # 1: show
    # 2: minimize
    # 3: maximize
  for a in arguments
    if exports._ == a
      space = 0
      continue
    switch typeof a
        when 'boolean'
          wait = a
        when 'number'
          show = a
        else
          if !a.length or /[\s^<|>]/.test a
            a = '"' + a + '"'
          if space
            cmdline += ' '
          cmdline += a
          space = 1
  sh.Run cmdline, show, wait
  return

# Special value to glue command line parameters
exports._ = {}
