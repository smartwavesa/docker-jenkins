# Pull base image
# ---------------
FROM jenkins/jenkins:2.73.3

# Maintainer
# ----------
MAINTAINER Mohamed Bouchenafa <mbouchenafa@smartwavesa.com>

USER root

# Install  sudo, maven
# -------------
RUN apt-get update && apt-get install -y \
  sudo \
  maven && rm -rf /var/lib/apt/lists/*
  
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
