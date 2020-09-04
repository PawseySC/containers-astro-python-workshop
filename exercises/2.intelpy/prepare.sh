#!/bin/bash

# run this from the miniconda3 container
# docker run --rm -it -v $(pwd):/data -w /data intelpython/intelpython3_core:2020.2 bash

conda install --no-update-deps -y  --file requirements.in

REQ_LABEL="3sep"
ENV_FILE="environment-${REQ_LABEL}.yaml"
conda env export >${ENV_FILE}

REQ_FILE="requirements-${REQ_LABEL}.yaml"
cp $ENV_FILE $REQ_FILE
sed -i -n '/dependencies/,/prefix/p' $REQ_FILE
sed -i -e '/dependencies:/d' -e '/prefix:/d' $REQ_FILE
sed -i 's/ *- //g' $REQ_FILE

