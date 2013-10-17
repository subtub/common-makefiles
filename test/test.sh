$(COMMON_MAKEFILES_PATH)=../

###
# lib/base.make
###
make -f lib/base.make

###
# node
###
make -f node/hint.make
