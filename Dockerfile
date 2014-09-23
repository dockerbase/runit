# VERSION 1.1
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Runit Image Container

FROM dockerbase/ubuntu

# Run dockerbase script
ADD     runit.sh /dockerbase/
RUN     /dockerbase/runit.sh

# Config runit
ADD     build/runit/1 /etc/runit/1
ADD     build/runit/1.d/cleanup-pids /etc/runit/1.d/cleanup-pids
ADD     build/runit/2 /etc/runit/2
