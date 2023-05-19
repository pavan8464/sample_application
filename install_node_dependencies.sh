#!/bin/bash
cd /var/www/html/RLOGX_REFINE
#
sudo chown -Rvf ubuntu:ubuntu /var/www/html/RLOGX_REFINE
#
sudo cp -Rvf node.service /etc/systemd/system/
#
sudo systemctl start node.service
sudo systemctl enable node.service
#
sudo sh /var/www/html/scripts/install_config.sh
