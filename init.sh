#!/bin/bash

#sudo unlink /etc/nginx/sites-enabled/default
#sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart