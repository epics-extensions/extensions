<<<<<<< Makefile
#
# $Id$
#
# Makefile for building subdirectories
#
# $Log$
# Revision 1.6  1999/04/16 20:12:01  jba
# Changed to Makefile.Host method.
#
# Revision 1.2  1994/09/21  22:18:29  jba
# New definitions in CONFIG* files
#
#

TOP = ..
ifneq ($(wildcard $(TOP)/config)x,x)
  # New Makefile.Host config file location
  include $(TOP)/config/CONFIG_EXTENSIONS
  include $(TOP)/config/RULES_DIRS
else
  # Old Makefile.Unix config file location
  EPICS=../..
  include $(EPICS)/config/CONFIG_EXTENSIONS
  include $(EPICS)/config/RULES_DIRS
endif
