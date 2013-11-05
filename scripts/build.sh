###
#
# Build the Makefiles we need.
# This files were published at npm registry.
#
###
node_modules/.bin/resi   --input src/subtool   --output subtool.make

###
# Build the node Makefiles
###
node_modules/.bin/resi   --input src/node/all      --output node.make
node_modules/.bin/resi   --input src/node/jsdox    --output jsdox.make
node_modules/.bin/resi   --input src/node/jshint   --output jshint.make
node_modules/.bin/resi   --input src/node/mocha    --output mocha.make
node_modules/.bin/resi   --input src/node/plato    --output plato.make
