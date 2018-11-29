#!/bin/bash
cd /usr/local/nagios/etc/servers/
sudo cp stage-remote.cfg $1.cfg
sudo sed -i -e 's/xx.xx.xx.xxx/'$2'/g' $1.cfg
sudo sed -i -e 's/stage-remote/'$1'/g' $1.cfg
echo -e "\noutput of $1.cfg\n\n"
sleep 1;
sudo cat $1.cfg
sleep 2;
echo -e "\n\nRestarting nagios\n"
sudo service nagios restart
sudo service apache2 restart
