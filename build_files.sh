#!/bin/bash

# Add Python and Pip to PATH
export PATH="/python312/bin:$PATH"

# Ensure Python is accessible
which python
which pip

# Install dependencies
pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --noinput

# Run migrations
python manage.py migrate
