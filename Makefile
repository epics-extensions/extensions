#
# $Id$
#
# Makefile for building subdirectories
#
# $Log$
# Revision 1.5  1995/01/10 22:08:58  jba
# Removed pruning of SCCS dirs for tar and tar.% targets
#
# Revision 1.4  1995/01/04  21:01:43  jba
# Added tar and tar.% rules.
#
# Revision 1.3  1994/11/01  16:47:53  jba
# Modified uninstall rule
#
# Revision 1.2  1994/11/01  12:25:31  jba
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
	@rm -rf ./bin/* ./lib/* \

cleanAll:
	@find src -type d -name 'O.*' -prune -exec rm -rf {} \;

tar:
	@echo "TOP: Creating ../extensions.Tar file..."; \
	cd ${EPICS}; \
    ls extensions/README* | xargs tar cf ${RELS}.Tar; \
	find extensions/src -name CVS -prune -o ! -type d -print \
		| grep -v "/O\..*$$" | xargs tar rf $*.Tar 

tar.%:
	@echo "TOP: Creating ../$*.Tar file..."; \
	cd ${EPICS}; \
    ls extensions/README* | xargs tar cf $*.Tar; \
	find extensions/src/$* -name CVS -prune -o ! -type d -print \
		| grep -v "/O\..*$$" | xargs tar rf $*.Tar 

