require! <[ path coffee-script @rollup/pluginutils ]>

module.exports = coffee

!function coffee(options = {})

  filter = pluginutils.create-filter options.include, options.exclude
  extensions = new Set options.extensions || <[ .coffee ]>

  return {transform, name: \coffee}

  function transform(code, id)
    if filter id and extensions.has path.extname id
      js = coffee-script.compile code, do
        bare: true
        source-map: true
      code: js.js
      map:  js.v3-source-map
