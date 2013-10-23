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
	MOCHA_HELP := "  mocha                         Test with mocha."
endif


###
# Targets
###
mocha:
	@node node_modules/.bin/mocha --timeout $(MOCHA_TIMEOUT) --slow $(MOCHA_SLOW) --reporter $(MOCHA_REPORTER)
	$(PRINT) "Mocha Test Finished!"

.PHONY: mocha
