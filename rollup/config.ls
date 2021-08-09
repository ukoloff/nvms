require! <[
  @rollup/plugin-inject
  @rollup/plugin-commonjs
  @rollup/plugin-node-resolve
  @rollup/plugin-json
  rollup-plugin-uglify
  ./livescript
  ./coffee
  rollup-plugin-sizes
  rollup-plugin-progress
]>

@input = \rollup/start

@output =
  dir: \tmp/
  name: \Oops
  format: \iife
  strict: false
  # exports: 'default'

extensions = <[ .js .ls .coffee ]>

@plugins =
  plugin-json!
  livescript!
  coffee!
  plugin-commonjs {extensions}
  plugin-node-resolve.node-resolve {extensions}
  rollup-plugin-sizes!
  rollup-plugin-progress!
  plugin-inject do
      PACKAGE: [require.resolve(\../package), '*']
  # rollup-plugin-uglify.uglify do
  #   output:
  #     max_line_len: 60
  #     keep_quoted_props: true
  ...
