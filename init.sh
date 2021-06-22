sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/shit.conf
sudo /etc/init.d/nginx restart

sudo ln -sf /home/box/web/etc/gunicorn_wsgi.conf /etc/gunicorn.d/shit
gunicorn -b 0.0.0.0:8080 -c ~/web/hello.py hello:application