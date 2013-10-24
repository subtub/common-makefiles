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
