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
      ->
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
          return
    me

runner = (args)->    