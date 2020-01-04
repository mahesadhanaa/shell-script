#!/bin/bash
rm -rf /var/lib/cloud/*
sudo apt-get update
sudo apt-get install git
git clone https://github.com/mahesadhanaa/shell-script.git
cd shell-script
sudo chmod +x install-apache2.sh
sudo ./install-apache2.sh
