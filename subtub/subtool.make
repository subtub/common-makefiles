###
# subtool.make
###


ifndef SUBTOOL_HELP
  SUBTOOL_HELP := "  subtool-readme \n  subtool-readme-git"
endif


###
# Targets
###
subtool-readme:
  @node node_modules/subtool/bin/subtool readme

subtool-readme-git:
  @node node_modules/subtool/bin/subtool readme -g

.PHONY: subtool-readme subtool-readme-git
