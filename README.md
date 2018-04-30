# jupyter-gpu
Jupyter docker image that supports Nvidia GPU

## Features
- Python 3.6.5
- Jupyter server with password
- Nvidia GPU
- Tensorflow-gpu
- Mounted host directory (default is `./notebooks`)

## Usage

1. Clone this project
```
git clone https://github.com/j0e1in/jupyter-gpu
```

2. Edit `python_packages.txt` to configure the packages you need

3. Set jupyter server password in `start_jupyter.sh` (recommended)

4. Build and start
``` sh
# Install nvidia-docker2
$ ./scripts/env_setup.sh

# Build image
$ ./scripts/build.sh

# Start jupyter server
$ ./scripts/start_jupyter.sh
```

## Todo
 - Add SSL support