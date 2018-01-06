###
Sync & async routine execution
###
steps = []

# Create new routine
module.exports =
exports = ->
  stop = 0
  start = steps.length

  me = $: ->
    mark ->
      runner start, stop, arguments
  methods = 'sa'  # .sync() & .async()
  i = methods.length
  while --i >= 0
    do (c = methods.substr(i, 1))->
      me[c] = (callback)->
        if not stop or (step = steps[steps.length-1])[c]
          steps.push step = {}
          stop = steps.length
        step[c] = callback
        return @
      return
  me

proto = {}

mark = (fn)->
  fn:: = proto
  fn

marked = (fn)->
  proto == fn::

guard = (fn)->
  try
    do fn
    true
  catch error
    echo "FAIL:", error.message
    return

runner = (start, stop, args)->
  self = {}
  args = [].slice.call(args)
  if 'function' == typeof args[args.length-1]
    callback = args.pop()

  waitFor = (success)->
    unless success
      callback success
      return
    do walk

  do walk = ->
    while start < stop
      step = steps[start++]

      # Synchronous step
      asyncArgs = args
      if step.s
        return false unless guard ->
          asyncArgs = step.s.apply self, args

        if false == asyncArgs
          continue
        asyncArgs ?= args
        if 'object' != typeof asyncArgs
          asyncArgs = [asyncArgs]

      # Asynchronous step
      unless step.a
        continue
      unless callback
        # Synchronous invocation
        result = true
        return false unless guard ->
          result = step.a.apply self, asyncArgs
        if not result and marked step.a
          return false
        continue

      # Real async
      if marked step.a
        # Nested routine
        step.a.apply self, asyncArgs.concat [waitFor]
        return

      asyncArgs = [argv0, '', routine.cookie(), start-1].concat asyncArgs
      proc = sh.Exec "wscript.exe //E:JScript#{
        (" \"#{arg}\"" for arg in asyncArgs).join('')}"
      exports._?.push ->
        unless proc.Status
          return
        waitFor !proc.ExitCode
        true
      return

    if callback
      callback true
      return
    true

# Check command line & run async step
exports.$ = (register)->
  unless '' == argv[0] and /^\d+$/.test(argv[2]) and routine.cookie() == argv[1]
    return

  echo._ = ->
  register?()

  try
    steps[argv[2]].a.apply {}, argv.slice 3
    exit 0
  catch err
    exit 1
