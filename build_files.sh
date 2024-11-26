#!/bin/bash

# Install dependencies
pip install -r requirements.txt

# Run migrations
python manage.py migrate

# Optionally, collect static files if needed for non-Django static hosting
# python manage.py collectstatic --noinput

# Start the application
python manage.py runserver
