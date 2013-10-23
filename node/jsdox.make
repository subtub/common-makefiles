###
# jsdox.make
###


ifndef JSDOX_INPUT
	JSDOX_INPUT := lib
endif

ifndef JSDOX_OUTPUT
	JSDOX_OUTPUT := docs
endif

ifndef JSDOX_FILENAME
	JSDOX_FILENAME := api.md
endif


###
# Targets
###
jsdox:
	@node node_modules/.bin/jsdox --output $(JSDOX_OUTPUT) $(JSDOX_INPUT)
	@mv $(CURDIR)/$(JSDOX_OUTPUT)/index.md $(CURDIR)/$(JSDOX_OUTPUT)/$(JSDOX_FILENAME)
	$(PRINT) "Docs Finished"

.PHONY: jsdox
