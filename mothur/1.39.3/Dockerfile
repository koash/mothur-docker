FROM centos:7.3.1611

MAINTAINER Koichi Ashizaki

RUN set -x \
    yum -y update \
 && yum -y install \
    sudo \
    unzip \
 && yum clean all

RUN echo "root:docker123" | chpasswd

ENV USER_NAME earth
ENV GROUP_NAME earth

RUN groupadd -g 1000 $GROUP_NAME \
 && useradd -c 'earth user' -d /home/$USER_NAME -g $USER_NAME -m $USER_NAME \
 && echo "earth:docker123" | chpasswd

RUN echo 'earth ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER earth

RUN mkdir -p /home/$USER_NAME/opt

WORKDIR /home/$USER_NAME/opt

ENV MOTHUR_VER 1.39.3

RUN curl -OL https://github.com/mothur/mothur/releases/download/v.$MOTHUR_VER/Mothur.linux_64.zip \
 && unzip Mothur.linux_64.zip \
 && sudo ln -s /home/$USER_NAME/opt/mothur/mothur /usr/bin/mothur \
 && find /home/$USER_NAME/opt -name '__MACOSX' -o -name '.DS_Store' | xargs rm -rf \
 && rm -rf Mothur.linux_64.zip

CMD ["mothur"]
