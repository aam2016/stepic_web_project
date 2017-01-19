#!/bin/bash

#sudo unlink /etc/nginx/sites-enabled/default
#sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
#gunicorn -b 0.0.0.0:8080 hello:app
sudo /etc/init.d/gunicorn restart
﻿
#sudo /etc/init.d/mysql start