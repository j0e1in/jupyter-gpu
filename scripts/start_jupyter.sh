#!/bin/bash

PASSWORD=
NOTEBOOK_DIR="$PWD/../../notebooks"

nvidia-docker run -d \
-n jupyter_gpu
-p 8888:8888 \
-p 6006:6006 \
-e PASSWORD=$PASSWORD \
-v $NOTEBOOK_DIR:/notebooks \
jupyter-gpu