#!/bin/bash

echo "BUILD START"

# Use Python 3.12 explicitly
python3.12 -m pip install --upgrade pip
python3.12 -m pip install -r requirements.txt

# Collect static files without interaction
python3.12 manage.py collectstatic --noinput

echo "BUILD END"
