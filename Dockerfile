FROM circleci/node

ADD VERSION .

RUN sudo apt-get -y -qq update
RUN sudo apt-get install python-pip python-dev build-essential
RUN sudo pip install awsebcli --upgrade
