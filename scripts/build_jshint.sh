###
#
# Build the jshint Makefile.
#
###


echo "Build jshint.make"
node_modules/.bin/resi --input src/node/jshint/index --output jshint.make
