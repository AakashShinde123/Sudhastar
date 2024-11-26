#!/bin/bash

# Ensure python3 is being used
python3 --version  # Check python version
pip3 install -r requirements.txt

# Run Django collectstatic command to gather static files
python3 manage.py collectstatic --noinput

# Debug: Check if static files are collected
echo "Static files collected:"
ls static/

# Optionally, run migrations if needed
python3 manage.py migrate --noinput

# Ensure staticfiles_build directory is created and populated
mkdir -p staticfiles_build
cp -r static/* staticfiles_build/

# Debug: Check if staticfiles_build is populated
echo "Contents of staticfiles_build:"
ls staticfiles_build/

# Additional build steps as necessary
