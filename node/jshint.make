###
# hint.make
###


ifndef HINT_DIR
	HINT_DIR := lib/
endif

define HINT_HELP
	"  hint                          Hint some files.\n  hint-version                  Get the jshint version."
endef


###
# Targets
###
jshint:
	@node node_modules/.bin/jshint $(HINT_DIR)
	$(PRINT) "Hinting Finished"

jshint-version:
	@node node_modules/.bin/jshint --version

.PHONY: jshint jshint-version
