###
# index.make
###


###
# The Repository name and version
###
MAKEFILE_NAME = "CommonMakefiles"
MAKEFILE_VERSION = "0.0.1"

###
# make shell executable
###
SHELL=/bin/sh

OSTYPE := $(shell uname -s)

###
# Print to console.
###
define PRINT
	@echo ${1}
endef

###
# Delete a directory.
###
define DELETE_DIR
	@echo "Delete '${1}' directory"
	$(shell rm -rf ${1})
endef


###
# help and version task
###
help:
	$(PRINT) ""
	$(PRINT) $(MAKEFILE_NAME)
	$(PRINT) ""
	$(PRINT) "Usage:"
	$(PRINT) ""
	$(PRINT) $(MOCHA_HELP)
	$(PRINT) $(HINT_HELP)
	$(PRINT) ""
	$(PRINT) "  help                          Print this message and exit."
	$(PRINT) "  version                       Print the version of the $(MAKEFILE_NAME)."
	$(PRINT) ""
	$(PRINT) "Report bugs to <https://github.com/subtub/CommonMakefiles/issues>"
	$(PRINT) ""

version:
	$(PRINT) $(MAKEFILE_VERSION)

.PHONY: help version
