#!/bin/bash

sudo apt get update && apt install -y python3-pip
sudo pip install virtualenvwrapper
export WORKON_HOME=~/Envs
mkdir -p $WORKON_HOME
export VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'
source /usr/local/bin/virtualenvwrapper.sh


