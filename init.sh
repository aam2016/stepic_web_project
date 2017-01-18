#!/bin/bash

#1
#sudo unlink /etc/nginx/sites-enabled/default
#sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

#2
#sudo ﻿ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
#sudo /etc/init.d/nginx restart
#sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart
#﻿sudo /etc/init.d/mysql start﻿

#3
#sudo ﻿ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/nginx.conf
#sudo /etc/init.d/nginx restart