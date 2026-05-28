#!/usr/bin/env bash
# exit on error 
set -o errexit

# Install dependencies
pip install -r requirements.txt

# Gather static files
python manage.py collectstatic --noinput 

# Run database migrations 
python manage.py migrate