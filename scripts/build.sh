###
# Build the subtool Makefile
###
node_modules/.bin/rci   --input src/subtool   --output subtool.make

###
# Build the node Makefiles
###
node_modules/.bin/rci   --input src/node/all      --output node.make
node_modules/.bin/rci   --input src/node/jsdox    --output jsdox.make
node_modules/.bin/rci   --input src/node/jshint   --output jshint.make
node_modules/.bin/rci   --input src/node/mocha    --output mocha.make
node_modules/.bin/rci   --input src/node/plato    --output plato.make
