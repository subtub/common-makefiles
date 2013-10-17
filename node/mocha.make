###
# mocha.make
###


ifndef MOCHA_REPORTER
	MOCHA_REPORTER := spec
endif

define MOCHA_HELP
	"  test                          Test with mocha.\n  test-hint                     Hint and test with mocha."
endef


###
# Targets
###
test:
	@node node_modules/.bin/mocha --reporter $(MOCHA_REPORTER)
	$(PRINT) "Test Finished"

test-hint: hint test

.PHONY: test test-hint
