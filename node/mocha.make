###
# mocha.make
###

ifndef MOCHA_REPORTER
	MOCHA_REPORTER := spec
endif

test:
	@node node_modules/.bin/mocha --reporter $(MOCHA_REPORTER)

test-hint: hint test

.PHONY: test test-hint
