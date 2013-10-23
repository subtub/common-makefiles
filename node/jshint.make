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
hint:
	@node node_modules/.bin/jshint $(HINT_DIR)
	$(PRINT) "Hinting Finished"

hint-version:
	@node node_modules/.bin/jshint --version

.PHONY: hint hint-version
