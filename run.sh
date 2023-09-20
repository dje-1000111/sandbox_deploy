#!/bin/bash
echo "Translate compil messages"
django-admin compilemessages
echo "##################################"

echo "Runserver"
python /app/django_app/bacasand/manage.py runserver 0.0.0.0:8000