#!/usr/bin/env bash

set -ae

python3.11 -m venv .venv || python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements-dev.txt
