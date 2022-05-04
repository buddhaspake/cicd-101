#!/bin/bash
pip install web.py
python manage.py migrate --noinput
python manage.py collectstatic
gunicorn TaskViewer.wsgi:application --bind  0.0.0.0:8000
