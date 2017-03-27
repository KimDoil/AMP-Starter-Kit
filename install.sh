#!/bin/sh
# DO NOT EDIT

mv apt.sh /root
mv selecter.sh /root
mv patch.md /root
mv install.sh /root

sh /root/selecter.sh

# Auto remove

cd /root
mv apt.sh
mv selecter.sh
mv patch.md
mv install.sh

exit 0
