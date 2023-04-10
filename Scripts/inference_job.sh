#!/bin/bash

source ml_train/bin/activate
python3 src/python/inference.py
deactivate
