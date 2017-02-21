To start nginx-gunicorn-Django:
$ virtualenv --python=/usr/bin/python3 web/myenv
$ source ./web/myenv/bin/activate    ### $ source ./web/myenv/bin/deactivate
$ pip install django gunicorn
$ git clone https://github.com/aam2016/stepic_web_project.git /home/box/web
$ cd web
$ sudo bash ./web/init.sh

To start gunicorn:
$ sudo gunicorn -b 0.0.0.0:8080 hello &
& - фоновый режим
$ sudo gunicorn -b 0.0.0.0:8000 ask.wsgi &

To test nginx:
$ sudo nginx -t

To save requirements:
$ pip freeze > requirements.txt

To install requirements:
$ pip install -r requirements.txt

Systemd
Copy:
gunicorn.service
gunicorn.socket
to /etc/systemd/system
Next enable the socket so it autostarts at boot:
$ systemctl enable gunicorn.socket
Either reboot, or start the services manually:
$ systemctl start gunicorn.socket

$ curl -I 0.0.0.0:8080
$ curl -I 0.0.0.0:8000

$ pwd    # -- where I am

MySQL
$ sudo apt-get install mysql-server mysql-client
$ sudo apt-get install python-pymysql  (sudo apt-get install python3-pymysql)
$ sudo pip install pymysql
$ sudo /etc/init.d/mysql start
$ sudo /etc/init.d/mysql status
$ sudo mysql -u root -h localhost -p
mysql> CREATE DATABASE stepic;
mysql> GRANT ALL ON stepic.* TO 'admin'@'localhost' IDENTIFIED BY 'admin';
mysql> FLUSH PRIVILEGES;
mysql> quit


$ ps -la // Для получения основных сведений о процессах, запущенных текущем пользователем
$ ps -ela  // Для всех пользователей 
$ ps -a  // Базовая информация для текущего пользователя

$ python manage.py syncdb
superuser name: root
password: admin
$ python manage.py makemigrations qa
$ python manage.py sqlmigrate qa 0001 (migrate)

lynx
$ sudo apt-get install lynx
$ lynx http://127.0.0.1:8000






