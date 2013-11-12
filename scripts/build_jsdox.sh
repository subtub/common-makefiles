###
#
# Build the jsdox Makefile.
#
###


echo "Build jsdox.make"
node_modules/.bin/resi --input src/node/jsdox/index --output jsdox.make
