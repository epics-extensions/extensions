#
# $Id$
#
# Makefile for building subdirectories
#
# $Log$
# Revision 1.1  1994/10/05 19:03:36  jba
# Initial version
#
#

EPICS = ..
include $(EPICS)/config/CONFIG_EXTENSIONS

DIRS = src

include $(EPICS)/config/RULES_DIRS

