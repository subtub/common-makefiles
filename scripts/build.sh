node_modules/.bin/rci --input src/makefile_base/index   --output index.make

node_modules/.bin/rci --input src/subtool               --output subtool.make

node_modules/.bin/rci --input src/node/all              --output node.make
node_modules/.bin/rci --input src/node/jsdox            --output jsdox.make
node_modules/.bin/rci --input src/node/jshint           --output jshint.make
node_modules/.bin/rci --input src/node/mocha            --output mocha.make
node_modules/.bin/rci --input src/node/plato            --output plato.make
