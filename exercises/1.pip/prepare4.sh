#!/bin/bash

# run this from the miniconda3 container
# docker run --rm -it -v $(pwd):/data -w /data python:3.8-slim bash

pip install -r requirements.in

REQ_FILE="requirements4-3sep.txt"
pip freeze >$REQ_FILE
