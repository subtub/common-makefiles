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


JSDOX_DEFAULT_PATH=$(CURDIR)/$(JSDOX_OUTPUT)/index.md
JSDOX_CURRENT_PATH=$(CURDIR)/$(JSDOX_OUTPUT)/$(JSDOX_FILENAME)

###
# Targets
###
jsdox:
	@rm -rf $(JSDOX_CURRENT_PATH)
	@echo "## API\n \
	" > $(JSDOX_CURRENT_PATH)
	@node node_modules/.bin/jsdox --output $(JSDOX_OUTPUT) $(JSDOX_INPUT)
	@cat $(JSDOX_DEFAULT_PATH) >> $(JSDOX_CURRENT_PATH)
	@rm $(JSDOX_DEFAULT_PATH)
	$(PRINT) "jsdox Finished"

.PHONY: jsdox