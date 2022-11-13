#!/bin/bash

CODENAME=iwona_project
PYTHON_VERSION=3.10.0

# Use pyenv to handle virtual envs
if ! [ -x "$(command -v pyenv)" ]; then
    echo "Please install pyenv: https://github.com/pyenv/pyenv#installation"
    exit 1
fi

if [ -e .python-version ]; then
    echo "Found .python-version. Using it as virtualenv"
else
    echo "Creating a virtualenv"
    pyenv install $PYTHON_VERSION -s
    pyenv virtualenv -p python3.10 $PYTHON_VERSION $CODENAME
    echo "Activating virtualenv"
    pyenv local $CODENAME

fi

pip install -U pip setuptools
pip install poetry

# Install dev requirements
poetry install --no-ansi --no-interaction -v