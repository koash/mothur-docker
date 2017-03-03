FROM centos:7.3.1611

MAINTAINER Koichi Ashizaki

RUN set -x \
    yum -y update && \
    yum -y install \
    gcc \
    gcc-c++ \
    unzip \
    ltdl \
    readline-devel \
    ncurses-devel \
    boost-devel \
    zlib-devel \
 && yum clean all

ENV MOTHUR_VER 1.38.1.1

WORKDIR /opt

RUN curl -OL https://github.com/mothur/mothur/releases/download/v$MOTHUR_VER/Mothur.linux_64.zip \
 && unzip Mothur.linux_64.zip \
 && ln -s /opt/mothur/mothur /usr/bin/mothur \
 && find /opt -name '__MACOSX' -o -name '.DS_Store' | xargs rm -rf \
 && rm -rf Mothur.linux_64.zip

CMD ["mothur"]
