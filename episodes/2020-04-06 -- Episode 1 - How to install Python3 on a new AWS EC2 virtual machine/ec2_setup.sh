#!/bin/bash

# install python
sudo yum update -y
sudo yum install python3 -y

# create venv and activate
python3 -m venv python_env
source email_validator_env/bin/activate

# install python libs
pip install --upgrade pip && pip install requests