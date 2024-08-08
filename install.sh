#!/bin/bash

pip install selenium
pip install webdriver-manager==4.0.2

echo "<--------------INSTALLING CHROME DRIVER------------>"
version=`curl -sS https://chromedriver.storage.googleapis.com/LATEST_RELEASE`
echo $version
wget -N https://chromedriver.storage.googleapis.com/${version}/chromedriver_linux64.zip -O /tmp/chromedriver_linux64.zip
unzip /tmp/chromedriver_linux64.zip -d /tmp/chromedriver/
cp /tmp/chromedriver/chromedriver /usr/local/bin/chromedriver

chromedriver -v

echo "<--------------INSTALLING GOOGLE CHROME------------>"
wget -N https://mirror.cs.uchicago.edu/google-chrome/pool/main/g/google-chrome-stable/google-chrome-stable_114.0.5735.198-1_amd64.deb -O /tmp/google-chrome-stable_114.0.5735.198-1_amd64.deb

sudo apt-get -y update
sudo apt-get -y install /tmp/google-chrome-stable_114.0.5735.198-1_amd64.deb
echo "-----------INSTALLED VERSIONS---------------"
google-chrome --version
chromedriver -v
