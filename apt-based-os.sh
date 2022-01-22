#!/bin/bash
echo "####[UPDATING THE SYSTEM]####"

sudo apt update -y && sudo apt upgrade -y

echo "####[INSTALLING SOME BASIC NEEDED UTILITIES]####"

sudo apt install vim htop network-manager dnsutils apt-transport-https -y

echo "####[MAKING SOME CHANGES ON THE SYSTEM]####"

sudo mkdir /app
sudo chmod 777 /tmp
sudo chown $USER:$USER /tmp

echo "####[INSTALLING BROWSERS]####"

echo "#[INSTALLING BRAVE BROWSER]#"

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update -y
sudo apt install brave-browser -y

echo "#[INSTALLING TOR BROWSER]#

cd /tmp

wget https://www.torproject.org/dist/torbrowser/11.0.4/tor-browser-linux64-11.0.4_en-US.tar.xz

tar -xfz tor-browser-linux64-11.0.4_en-US.tar.xz

mv tor-browser_en-US /app/tor-browser

sudo ln -sf /app/tor-browser/Browser/start-tor-browser /bin/tor-browser


