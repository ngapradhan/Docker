FROM jenkins/jenkins

USER root

RUN apt update -y \
  && apt install curl python3 -y \
  && curl -O https://bootstrap.pypa.io/get-pip.py \
  && python get-pip.py \
  && pip install ansible

USER jenkins
