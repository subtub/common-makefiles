###
#
# Build the apidoc Makefile.
#
###


echo "Build apidoc.make"
node_modules/.bin/resi --input src/node/apidoc/index --output apidoc.make
