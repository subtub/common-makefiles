###
#
# Build the Makefiles we need.
# This files were published at npm registry.
#
###


echo "Build subtool.make"
node_modules/.bin/resi --input src/subtool --output subtool.make

echo "Build node.make"
node_modules/.bin/resi --input src/node/all --output node.make

echo "Build apidoc.make"
node_modules/.bin/resi --input src/node/apidoc --output apidoc.make
echo "Build jsdox.make"
node_modules/.bin/resi --input src/node/jsdox --output jsdox.make
echo "Build jshint.make"
node_modules/.bin/resi --input src/node/jshint --output jshint.make
echo "Build mocha.make"
node_modules/.bin/resi --input src/node/mocha --output mocha.make
echo "Build plato.make"
node_modules/.bin/resi --input src/node/plato --output plato.make
