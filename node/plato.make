###
# plato.make
###


ifndef PLATO_TITLE
	PLATO_TITLE := $(shell basename $(PWD))
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

plato-gh-pages:
	@git checkout gh-pages
	@cp -rf $(PLATO_OUTPUT_DIR) ../$(PLATO_OUTPUT_DIR)
	@git checkout develop
	@mv ../$(PLATO_OUTPUT_DIR) $(PLATO_OUTPUT_DIR)
	$(MAKE) plato
	@mv $(PLATO_OUTPUT_DIR) ../$(PLATO_OUTPUT_DIR)
	@git checkout gh-pages
	@rm -rf $(PLATO_OUTPUT_DIR)
	@mv ../$(PLATO_OUTPUT_DIR) $(PLATO_OUTPUT_DIR)
	@git add report/
	@git commit -m "Report updated by CommonMakefiles"
	@git checkout develop

.PHONY: plato plato-gh-pages
