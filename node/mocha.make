###
# mocha.make
###


ifndef MOCHA_REPORTER
	MOCHA_REPORTER := spec
endif

ifndef MOCHA_TIMEOUT
	MOCHA_TIMEOUT := 2000
endif

ifndef MOCHA_SLOW
	MOCHA_SLOW := 75
endif

ifndef MOCHA_HELP
	MOCHA_HELP := "  test                          Test with mocha.\n  test-hint                     Hint and test with mocha."
endif


###
# Targets
###
test:
	@node node_modules/.bin/mocha --timeout $(MOCHA_TIMEOUT) --slow $(MOCHA_SLOW) --reporter $(MOCHA_REPORTER)
	$(PRINT) "Test Finished"

test-hint: jshint test

.PHONY: test test-hint
