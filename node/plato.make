###
# plato.make
###


ifndef PLATO_TITLE
	PLATO_TITLE := $(shell basename $PWD)
endif

ifndef PLATO_OUTPUT_DIR
	PLATO_OUTPUT_DIR := report
endif

ifndef PLATO_FILES
	PLATO_FILES := lib/
endif


###
# Targets
###
plato:
	@node node_modules/.bin/plato --title $(PLATO_TITLE) --recurse --dir $(PLATO_OUTPUT_DIR) $(PLATO_FILES)

.PHONY: plato
