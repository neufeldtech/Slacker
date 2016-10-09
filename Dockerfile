FROM ubuntu:14.04
RUN sudo apt-get update && sudo apt-get install -y build-essential 
RUN mkdir -p /opt/slacker
ADD . /opt/slacker
WORKDIR /opt/slacker
RUN sudo make ubuntu-dependencies
RUN sudo make install
CMD slacker
