# docker-base [![Build Status](https://amritanshupandey.visualstudio.com/amritanshu_pandey/_apis/build/status/amritanshu-pandey.docker-base?branchName=master)](https://amritanshupandey.visualstudio.com/amritanshu_pandey/_build/latest?definitionId=5&branchName=master)
A functional docker base image

## Features
- Initialisation process allows multiple init scripts to be executed
  every time the container is started
- It provides a flexiblity in terms of customising the container's behaviour as per the need

## Volumes
1. ### /etc/initialise.sh.d

The directory `/etc/initialise.sh.d` is exposed as a volume. It means that if this directory
is mapped as a named volume or a bind mount, then the content of this directory as
shipped with the image, will be copied to the exposed volume. New initialisation scripts can be
added to the volume


## Usage
- Use this docker image as source
- Add init scripts in directory '/etc/initialise.sh.d'
- script `/etc/initialise.sh.d/00-motd.sh` is already baked into the image
  that could be overwritten to customise the motd message.
- Initialisation scripts added to the directory `/etc/initialise.sh.d/` are executed in
  alphabetical order one by one. There are certain conditions for the initialisation scripts:
  - Initialisation scripts must be an executable
  - Its a good practice to begin the name of the init scripts with a number, where the scripts are
    executed one after another from smaller number in ascending order.

