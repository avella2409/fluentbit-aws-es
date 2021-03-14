FROM debian:latest as deb
RUN apt-get update && \
    apt-get install --assume-yes curl && \
    apt-get install --assume-yes gnupg && \
    echo "deb https://packages.fluentbit.io/debian/buster buster main" >> /etc/apt/sources.list && \
    curl https://packages.fluentbit.io/fluentbit.key | apt-key add - && \
    apt-get update && \
    apt-get install --assume-yes td-agent-bit
COPY td-agent-bit.conf /etc/td-agent-bit/.
ENV PATH "$PATH:/opt/td-agent-bit/bin"