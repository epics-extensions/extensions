#!/bin/sh
# Find out the Linux distribution
# Ideas stolen from here:
#   https://github.com/jeonghanlee/pkg_automation/blob/master/pkg_automation.bash

if [ -x /usr/bin/lsb_release ] ; then
  dist_id=$(lsb_release -is)
  dist_cn=$(lsb_release -cs)
  dist_rs=$(lsb_release -rs)
  tmpdist=$dist_id${dist_cn}${dist_rs}
elif [ -r /usr/bin/lsb_release ] ; then
  eval $(grep "^ID=" /etc/os-release)
  eval $(grep "^VERSION_ID=" /etc/os-release)
  tmpdist=$ID$VERSION_ID
else
  tmpdist=Unknown
fi

case "$tmpdist" in
  [dD]ebian*8*)
   echo Debian8
   ;;
  [dD]ebian*9*)
    echo Debian9
    ;;
  Raspbian.*8*)
    echo Raspbian8
    ;;
  Raspbian.*9*)
    echo Raspbian9
    ;;
  *)
    echo Unsupported
    ;;
esac
