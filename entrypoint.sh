#!/bin/bash

python manage.py migrate --noinput
python manage.py collectstatic --noinput


gunicorn engine.wsgi:application --bind 0.0.0.0 --workers 3 --timeout 1800
