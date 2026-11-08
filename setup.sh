#!/bin/bash

VENV_NAME=".venv"

python3 -m venv $VENV_NAME
source $VENV_NAME/bin/activate
pip install --upgrade pip
pip install pandas numpy matplotlib seaborn openpyxl scikit-learn