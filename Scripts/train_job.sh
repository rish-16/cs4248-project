#!/bin/bash

source mlesnli_train/bin/activate
python3 src/python/inference.py
deactivate
