#!/bin/bash

sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo ln -sf /home/box/web/etc/gunicorn-django.conf   /etc/gunicorn.d/test-django
sudo /etc/init.d/gunicorn restart
#source web/myvenv/bin/activate
#gunicorn -b 0.0.0.0:8080 --pythonpath /home/box/web/ hello:app &     
#gunicorn -b 0.0.0.0:8000 --pythonpath /home/box/web/ask ask.wsgi:application & 
