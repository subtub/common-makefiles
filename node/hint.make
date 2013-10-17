ifdef COMMON_MAKEFILES_PATH
	include ${COMMON_MAKEFILES_PATH}/node/variables.make
else
	include node/variables.make
endif


###
# Hint
###
hint:
	@node node_modules/.bin/jshint lib/

.PHONY: hint
