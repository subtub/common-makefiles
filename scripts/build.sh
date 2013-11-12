###
#
# Build the Makefiles we need.
# This files were published at npm registry.
#
###


echo "Build node.make"
node_modules/.bin/resi --input src/node/all --output node.make

sh scripts/build_apidoc.sh
sh scripts/build_jsdox.sh
sh scripts/build_jshint.sh
sh scripts/build_mocha.sh
sh scripts/build_plato.sh
sh scripts/build_subtool.sh
