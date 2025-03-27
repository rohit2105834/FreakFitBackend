#!/bin/bash

# Ensure Python is installed
if ! command -v python3 &> /dev/null; then
    echo "Python3 not found. Installing..."
    apt-get update && apt-get install -y python3 python3-pip
fi

# Install dependencies
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

# Collect static files
python3 manage.py collectstatic --noinput
