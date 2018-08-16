#!/bin/sh
set -e
#set -x

echo VMware Unlocker 2.1.2
echo ===============================
echo Copyright: Dave Parsons 2011-17
echo Contributor: virtualex  2018

# Ensure we only use unmodified commands
export PATH=/bin:/sbin:/usr/bin:/usr/sbin

echo Uninstalling local.sh
cp /etc/rc.local.d/.#local.sh /etc/rc.local.d/local.sh
python esxi-config.py off
backup.sh 0
echo Success - please now restart the server!
