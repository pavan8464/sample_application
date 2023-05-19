#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y &&
sudo apt-get install software-properties-common -y &&
sudo apt-get install ca-certificates apt-transport-https software-properties-common  &&
if ! [ -x "$(command -v apache2)" ]; then sudo apt-get install apache2 -y >&2;   exit 1; fi # install apache if not already installed
if ! [ -x "$(command -v node)" ]; then sudo apt install nodejs -y >&2;   exit 1; fi # install node if not already installed
if ! [ -x "$(command -v npm)" ]; then sudo apt install npm -y >&2;   exit 1; fi # install node if not already installed
if ! [ -x "$(command -v aws)" ]; then sudo apt install awscli -y >&2;   exit 1; fi # 
