# VERSION 1.1
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Runit Image Container

FROM dockerbase/ubuntu

# Run dockerbase script
ADD     runit.sh /dockerbase/
RUN     /dockerbase/runit.sh
