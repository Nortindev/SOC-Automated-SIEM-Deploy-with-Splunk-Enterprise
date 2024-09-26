#!/bin/bash

# Download Splunk package
wget -O splunk-9.0.3-dd0128b1f8cd-linux-2.6-amd64.deb "https://download.splunk.com/products/splunk/releases/9.0.3/linux/splunk-9.0.3-dd0128b1f8cd-linux-2.6-amd64.deb"

# Move Splunk package to /tmp
mv splunk-9.0.3-dd0128b1f8cd-linux-2.6-amd64.deb /tmp
cd /tmp

# Install Splunk
sudo dpkg -i splunk-9.0.3-dd0128b1f8cd-linux-2.6-amd64.deb

# Enable Splunk to start at boot and accept license
sudo /opt/splunk/bin/splunk enable boot-start --accept-license --answer-yes

# Start the Splunk service
sudo service splunk start

# Download Splunk's Tutorial data (sample data)
wget -O tutorialdata.zip "https://docs.splunk.com/images/Tutorial/tutorialdata.zip"

# Unzip the tutorial data
unzip tutorialdata.zip -d /tmp/tutorialdata

# Add data to Splunk via CLI using the 'add oneshot' command
sudo /opt/splunk/bin/splunk add oneshot /tmp/tutorialdata/splunk_tutorial_data.csv -index tutorial_index
