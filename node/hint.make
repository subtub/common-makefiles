###
# hint.make
###

ifndef HINT_DIR
	HINT_DIR := lib/
endif


hint:
	@node node_modules/.bin/jshint $(HINT_DIR)

hint-version:
	@node node_modules/.bin/jshint --version

.PHONY: hint hint-version
