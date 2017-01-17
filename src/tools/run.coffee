###
Run process
###
module.exports = (args...)->
  cmdline = ''
  wait = false
  show = 1
    # 0: hide
    # 1: show
    # 2: minimize
    # 3: maximize
  for a in args
    switch typeof a
        when 'boolean'
          wait = a
        when 'number'
          show = a
        else
          if /[\s^<|>]/.test a
            a = '"' + a + '"'
          if cmdline
            cmdline += ' '
          cmdline += a
  sh.Run cmdline, show, wait
  return
