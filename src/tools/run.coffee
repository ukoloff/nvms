###
Run process
###
module.exports = exports = ->
  cmdline = ''
  wait = false
  show = 1
    # 0: Hides the window and activates another window
    # 1: Activates and displays a window
    # 2: Activates the window and displays it as a minimized window
    # 3: Activates the window and displays it as a maximized window
    # 4: Displays a window in its most recent size and position. The active window remains active.
    # 7: Displays the window as a minimized window. The active window remains active
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
