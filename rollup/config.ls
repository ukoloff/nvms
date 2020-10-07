require! <[
  @rollup/plugin-inject
  @rollup/plugin-commonjs
  @rollup/plugin-node-resolve
  @rollup/plugin-json
  rollup-plugin-uglify
  rollup-plugin-sizes
  rollup-plugin-progress
]>

@input = \rollup/start.js

@output =
  dir: \tmp/
  format: \iife
  strict: false
  # exports: 'default'

@plugins =
  plugin-commonjs
  plugin-node-resolve.node-resolve
  plugin-json!
  rollup-plugin-sizes!
  rollup-plugin-progress!
  plugin-inject do
      PACKAGE: require.resolve \../package
  rollup-plugin-uglify.uglify do
    output:
      max_line_len: 60
      keep_quoted_props: true
  ...
