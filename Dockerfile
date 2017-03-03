FROM centos:7.3.1611

RUN set -x \
    yum -y update && \
    yum -y install \
    gcc \
    gcc-c++ \
    unzip \
    make \
    ltdl \
    readline-devel \
    ncurses-devel \
    boost-devel \
    zlib-devel \
 && yum clean all

ENV MOTHUR_VER 1.38.1.1

WORKDIR /opt

RUN curl -OL https://github.com/mothur/mothur/archive/v$MOTHUR_VER.tar.gz \
 && tar -zxvf v$MOTHUR_VER.tar.gz \
 && cd /opt/mothur-$MOTHUR_VER \
 && make \
 && ln -s /opt/mothur-$MOTHUR_VER/mothur /usr/bin/mothur \
 && rm -rf /opt/v$MOTHUR_VER.tar.gz

CMD ["mothur"]
