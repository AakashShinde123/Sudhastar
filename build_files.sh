#!/bin/bash

/usr/bin/python3 --version  # Check python version
/usr/bin/pip3 install -r requirements.txt

# Run Django collectstatic command to gather static files
/usr/bin/python3 manage.py collectstatic --noinput

# Optionally, run migrations if needed
/usr/bin/python3 manage.py migrate --noinput

# Ensure staticfiles_build directory is created and populated
mkdir -p staticfiles_build
cp -r static/* staticfiles_build/

# Debug: Check if staticfiles_build is populated
echo "Contents of staticfiles_build:"
ls staticfiles_build/
