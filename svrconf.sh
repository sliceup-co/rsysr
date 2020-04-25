#!/bin/bash
echo "Copying rsyslog.conf to /etc/rsyslog.conf"
sudo cp rsysr/rsyslog.conf /etc/rsyslog.conf
sleep 1
sudo systemctl enable rsyslog
sudo systemctl start rsyslog
echo "verifying rsyslog is enabled"
sleep 2
sudo systemctl restart rsyslog
clear
echo "The system is now ready to receive syslog files"
echo
echo "The output can be found at /tmp/logs"
echo
echo "If you delete that file, you may have to restart the service"

