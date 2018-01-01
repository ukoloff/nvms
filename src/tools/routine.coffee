###
Sync & async routine execution
###
steps = []

# Create new routine
module.exports = ->
  start = steps.length
  steps.push {}

  do chain = ->
    me = $: ->
      stop = steps.length
      mark ->
        runner start, stop, arguments
    methods = 'sa'  # .sync() & .async()
    i = methods.length
    while --i > 0
      do (c = methods.substr(i, 1))->
        me[c] = (callback)->
          step = steps[steps.length-1]
          if step[c]
            steps.push step = {}
          step[c] = callback
          return @
        return
    me

proto = {}

mark = (fn)->
  fn:: = proto

marked = (fn)->
  proto == fn::

runner = (start, stop, args)->    
  args = args.slice()
  if 'function' == typeof args[args.length-1]
    callback = args.pop()

  # Sync case
  while start < stop
    step = steps[start]
    asyncArgs = args
    if step.s 
      asyncArgs = step.s.apply(proto, args)
      if false == asyncArgs
        continue
      asyncArgs ?= args
      if 'object' != typeof asyncArgs
        asyncArgs = [asyncArgs]
    unless step.a
      continue
    step.a.apply(proto, asyncArgs)
  return