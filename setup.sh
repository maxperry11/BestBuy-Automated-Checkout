#!/bin/bash

# Update package list
sudo apt-get update

# Install pip
sudo apt-get install -y python3-pip

# Install required libraries
pip3 install selenium
pip3 install tk

# Download and install Chrome WebDriver
CHROME_DRIVER_VERSION=$(curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE)
wget -N https://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip -P ~/
unzip ~/chromedriver_linux64.zip -d ~/
sudo mv -f ~/chromedriver /usr/local/bin/chromedriver
sudo chown root:root /usr/local/bin/chromedriver
sudo chmod 0755 /usr/local/bin/chromedriver

echo "Setup complete. All required libraries have been installed."
