import
  \rollup-plugin-babel : babel
  \rollup-plugin-node-resolve : node-resolve

{name} = require \./package.json

function output file, format=\es
  {file, format, name, exports: \named sourcemap: true use-strict: false}

target =
  input: \src/index.ls
  output:
    * output 'dist/index.esm.js'
    * output 'dist/index.js' \umd
    * output 'lib/index.js' \cjs
  plugins:
    node-resolve jsnext: true extensions: <[.ls .js]>
    babel {}
  external: <[livescript @babel/types @babel/core]>


export default: target
