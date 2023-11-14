#!/bin/bash
python3 -m venv venv
mkvirtualenv stateless-flask
mkdir -p stateless-flask
cd stateless-flask
mkdir -p app
mkdir -p kubernetes
pip install Flask==3.0.0
pip freeze > app/requirements.txt
