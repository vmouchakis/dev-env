FROM ubuntu:20.04

# LABEL about the custom image
LABEL maintainer="vmouchakis@gmail.com"
LABEL version="0.1"
LABEL description="This is a custom Docker Image for development purposes."

# Disable interactive dialogue
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  rm -rf /var/lib/apt/lists/*

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]