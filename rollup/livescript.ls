require! <[ path livescript @rollup/pluginutils ]>

module.exports = live-script

!function live-script(options = {})

  filter = pluginutils.create-filter options.include, options.exclude
  extensions = new Set options.extensions || <[ .ls ]>

  return {transform, name: \livescript}

  function transform(code, id)
    if filter id and extensions.has path.extname id
      js = livescript.compile code, do
        bare: true
        map: true
      code: js.code
      map:  JSON.stringify js.map
