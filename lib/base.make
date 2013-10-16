###
#
###
MAKEFILE_NAME = "Makefiles"
MAKEFILE_VERSION = "0.0.1"

###
# make shell executable
###
SHELL=/bin/sh

###
# Delete a directory
###
define CLEAN_RULE
        @echo "Delete '${1}' directory"
        $(shell rm -rf ${1})
endef

###
# Help
###

help:
	@echo ""
	@echo "  Usage:"
	@echo ""
	@echo "    help"
	@echo "    version"
	@echo ""

version:
	@echo $(MAKEFILE_VERSION)

.PHONY: help version
