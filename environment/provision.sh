#!/bin/bash

# Install nginx
sudo apt-get update -y
sudo apt-get install nginx -y

# Update and Upgrade
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update -y
sudo apt-get install ruby2.4 ruby2.4-dev -y

# Install Gems
sudo apt-get install build-essential zlib1g-dev libgmp-dev libxml2 -y
sudo gem install bundler
sudo gem install rails
sudo gem install rake

sudo rm /etc/nginx/sites-available/default
sudo cp /home/ubuntu/app/environment/templates/default /etc/nginx/sites-available/default
sudo service nginx reload
