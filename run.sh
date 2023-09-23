#!/bin/bash
echo "Make migrations"
python /app/django_app/bacasand/manage.py makemigrations
echo "##################################"

echo "Migrate"
python /app/django_app/bacasand/manage.py migrate
echo "##################################"

echo "Translate compil messages"
django-admin compilemessages
echo "##################################"

echo "Runserver"
python /app/django_app/bacasand/manage.py runserver 0.0.0.0:8000