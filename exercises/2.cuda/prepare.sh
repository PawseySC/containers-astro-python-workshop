#!/bin/bash

# run this from the miniconda3 container
# docker run --rm -it -v $(pwd):/data -w /data python:3.8-slim bash

pip install -r requirements.in

REQ_LABEL="3sep"
REQ_FILE="requirements-${REQ_LABEL}.txt"
pip freeze >$REQ_FILE
