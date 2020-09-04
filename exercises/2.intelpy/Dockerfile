ARG IPY_VERSION=2020.2
FROM intelpython/intelpython3_core:${IPY_VERSION}
# Note: these python images are based on Debian (as of 27 August 2020, Debian 10 Buster)

ENV CONDA_PREFIX="/opt/conda"

ARG REQ_FILE="requirements-3sep.yaml"
ADD requirements.in /
ADD $REQ_FILE /requirements.yaml
RUN conda install -y --no-deps --file /requirements.yaml \
      && conda clean -ay

