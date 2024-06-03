#!/bin/sh

python manage.py migrate
python manage.py collectstatic --noinput

gunicorn --bind 127.0.0.1:8000 fox7.wsgi

#--permit-unconventional-http-version


