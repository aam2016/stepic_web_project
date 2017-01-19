#!/bin/bash

#sudo unlink /etc/nginx/sites-enabled/default
#sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
# старое sudo ln -sf /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
#gunicorn -b 0.0.0.0:8080 hello:app
sudo /etc/init.d/gunicorn restart
﻿
#sudo /etc/init.d/mysql start