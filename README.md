# fastpp-prospect-docker

A docker container with fastpp, FSPS and prospector installed.

This container installs from the following repositories, as well as dependencies:

- FSPS: https://github.com/cconroy20/fsps 
- FAST++: https://github.com/cschreib/fastpp
- Prospector: https://github.com/bd-j/prospector

You can build with `docker build -t . fastpp-prospector`.

Mount your directory to /data with `docker run --it --rm -v $PWD:/data fastpp-prospector`.
