# VERSION 1.0
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Ubuntu Image Container

FROM dockerbase/ubuntu

MAINTAINER Richad Lee "lifuzu@gmail.com"

ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

# Run the build scripts
RUN	apt-get update

# Install runit.
RUN	apt-get install -y --no-install-recommends runit

# Clean up system
RUN	apt-get clean
RUN	rm -rf /tmp/* /var/tmp/*
RUN	rm -rf /var/lib/apt/lists/*

# Set environment variables.
ENV 	HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
