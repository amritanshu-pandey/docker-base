FROM ubuntu:latest
LABEL maintainer='Amritanshu Pandey <email@amritanshu.in>'

RUN apt update -y && apt dist-upgrade -y
ADD root /

VOLUME /etc/initialise.sh.d
CMD /initialise.sh
