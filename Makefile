#
# $Id$
#
# Makefile for building subdirectories
#
# $Log$
# Revision 1.2  1994/11/01 12:25:31  jba
# Added make cleanAll and uninstall rules
#
# Revision 1.1  1994/10/05  19:03:36  jba
# Initial version
#
#

EPICS = ..
include $(EPICS)/config/CONFIG_EXTENSIONS

DIRS = src

include $(EPICS)/config/RULES_DIRS

uninstall:
	@echo "TOP: Uninstalling libraries and executables"
	@rm -rf $(INSTALL_BIN)/* $(INSTALL_LIB)/* \

cleanAll:
	@find src -type d -name 'O.*' -prune -exec rm -rf {} \;
