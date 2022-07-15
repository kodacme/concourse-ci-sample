#!/bin/bash

cd repo/webapp

pip install --upgrade pip
pip install -r requirements.txt
pytest
