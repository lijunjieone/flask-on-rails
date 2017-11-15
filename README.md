# 目标
使用falsk来完成一些简单的接口,增加常用的nginx+uwsgi配置,专注业务逻辑实现

# 安装必要组件
sudo apt-get install python-virtualenv
sudo apt-get install python-dev
virtualenv flask
flask/bin/pip install flask
 flask/bin/pip install flask-login
 flask/bin/pip install flask-openid
 flask/bin/pip install flask-mail
 flask/bin/pip install flask-sqlalchemy
 flask/bin/pip install sqlalchemy-migrate
 flask/bin/pip install flask-whooshalchemy
 flask/bin/pip install flask-wtf
 flask/bin/pip install flask-babel
 flask/bin/pip install guess_language
 flask/bin/pip install flipflop
 flask/bin/pip install coverage
 flask/bin/pip install pycrypto
 flask/bin/pip install requests
 flask/bin/pip install uwsgi
sudo apt-get install nginx