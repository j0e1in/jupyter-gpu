#!/bin/bash

CONFIG="$PWD/jupyter_notebook_config.py"
NOTEBOOK_DIR="$PWD/../notebooks"
CERT="$PWD/private/fullchain.pem"
KEY="$PWD/private/privkey.pem"

nvidia-docker run \
--name jupyter_gpu \
--net host \
-v $CONFIG:/config.py:ro \
-v $CERT:/private/cert.pem:ro \
-v $KEY:/private/key.pem:ro \
-v $CA:/private/ca.pem:ro \
-v $NOTEBOOK_DIR:/notebooks \
jupyter-gpu \
jupyter notebook \
--config=/config.py \
--certfile=/private/cert.pem \
--keyfile=/private/key.pem
