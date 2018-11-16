# jupyter-gpu
Jupyter docker image that supports Nvidia GPU

## Features
- Python 3.6.5
- Jupyter server with password
- Nvidia GPU
- Tensorflow-gpu
- Mounted host directory (default is `../notebooks`)
- SSL

## Usage

1. Clone this project
```
git clone https://github.com/j0e1in/jupyter-gpu
```

2. Add the packages you need to `python_packages.txt`

3. Set jupyter server password (hashed) in `jupyter_notebook_config.py` (recommended)
   You can generate a hash password with python:
``` py
>>> from notebook.auth import passwd
>>> passwd()
Enter password:
Verify password:
(Example) 'sha1:cea8d0adfe6c:4fad9f9637f21a5056ffc592e7873a444ae57cc6'
```
4. Set port in `jupyter_notebook_config.py` (default is 8888)

5. Build and start
``` sh
# Install nvidia-docker2
$ ./scripts/env_setup.sh

# Build image
$ ./scripts/build.sh

# Start jupyter server
$ ./scripts/start_jupyter.sh
```
