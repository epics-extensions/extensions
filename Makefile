#
# $Id$
#
# Makefile for building subdirectories
#
# $Log$
# Revision 1.13  1996/03/06 18:48:43  jba
# Changed definition of DIR_TYPE.
#
# Revision 1.12  1996/03/04 17:35:40  jba
# Makefile now includes RULES_DIRS
#
# Revision 1.11  1995/10/02  17:26:35  jba
# Removed extra quote marks.
#
# Revision 1.10  1995/08/31  21:09:59  jba
# Modified cleanAll and uninstall to do only the BUILD_ARCHS dirs
#
# Revision 1.9  1995/04/11  15:14:16  jba
# Put verbose on tar command and added top level Makefile to tar files.
#
# Revision 1.8  1995/03/07  15:33:51  jba
# Fixed tar rule.
#
# Revision 1.7  1995/02/13  15:12:25  jba
# Added Cleaning comment and rm of include directory
#
# Revision 1.6  1995/01/25  15:31:45  jba
# Added templates to uninstall
#
# Revision 1.5  1995/01/10  22:08:58  jba
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
DIR_TYPE = DIR_TYPE_EXTTOP
include $(EPICS)/config/RULES_DIRS

DIRS = src
