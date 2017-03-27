#!/bin/sh

cd /root

echo "AMP Installer version "2.0""
sleep 2

echo "View PatchNote? (Y/N)"
read pn

if [ $pn = Y ]
  then
    cat ./patch.md
    echo "Wait 10Sec"
    sleep 10
fi
clear

echo "How to install? (apt(1))
read installer
if [ $installer = 1 ]
  then
    ./apt.sh
  else
    if [ $installer = 2 ]
      then
        echo "This option is not found."
      else
        echo "Retry select install option."
    exit 1
  fi
fi

sleep 2

service apache2 start
service mysql start



echo "Install seccess!"
exit 0
