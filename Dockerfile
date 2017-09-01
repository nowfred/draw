FROM ubuntu:xenial

RUN apt-get update -qy && \
    apt-get install -qy curl

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -

RUN apt-get update -qy && \
    apt-get install -qy \
    libcairo2-dev \
    libjpeg62-dev \
    libpango1.0-dev \
    libgif-dev \
    build-essential \
    g++ \
    wget \
    nodejs

RUN mkdir draw
ADD . draw

RUN ls draw

CMD ./draw/bin/run.sh

