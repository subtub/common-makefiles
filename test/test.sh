###
#
# Build the Makefiles and execute some make tasks.
# After tasks finished, execute clean.sh script.
#
###


echo "--> Test Building"
sh scripts/build.sh

echo "--> Test Makefiles"
echo "    jsdox.make"
make -f jsdox.make jsdox-help
echo "    jshint.make"
make -f jshint.make jshint-help
echo "    mocha.make"
make -f mocha.make mocha-help
echo "    plato.make"
make -f plato.make plato-help
echo "    subtool.make"
make -f subtool.make subtool-help

echo "--> Test clean Script"
sh scripts/clean.sh
