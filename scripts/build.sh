###
#
# Build the Makefiles we need.
# This files were published at npm registry.
#
###


echo "Build subtool.make"
node_modules/.bin/resi --input src/subtool/index --output subtool.make

echo "Build node.make"
node_modules/.bin/resi --input src/node/all --output node.make

echo "Build apidoc.make"
node_modules/.bin/resi --input src/node/apidoc/index --output apidoc.make
echo "Build jsdox.make"
node_modules/.bin/resi --input src/node/jsdox/index --output jsdox.make
echo "Build jshint.make"
node_modules/.bin/resi --input src/node/jshint/index --output jshint.make
echo "Build mocha.make"
node_modules/.bin/resi --input src/node/mocha/index --output mocha.make
echo "Build plato.make"
node_modules/.bin/resi --input src/node/plato/index --output plato.make
