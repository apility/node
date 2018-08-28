FROM circleci/node:latest

ADD VERSION .

RUN sudo apt-get -y -qq update
RUN sudo apt-get install python-pip python-dev build-essential
RUN sudo pip install awsebcli --upgrade
RUN sudo apt-get install rsync
