# docker-base [![Build Status](https://amritanshupandey.visualstudio.com/amritanshu_pandey/_apis/build/status/amritanshu-pandey.docker-base?branchName=master)](https://amritanshupandey.visualstudio.com/amritanshu_pandey/_build/latest?definitionId=5&branchName=master)
A functional docker base image

## Features
- Initialisation process allows executing multiple init scripts to be executed
  every time the container is started


## Usage
- Use this docker image as source
- Add init scripts in directory '/etc/initialise.sh.d'
- script `/etc/initialise.sh.d/00-motd.sh` is already baked into the image
  that could be overwritten to customise the motd message.
