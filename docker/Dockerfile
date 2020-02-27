# download the base image Ubuntu
FROM ubuntu:18.04
MAINTAINER JEFKE

ENV DEBIAN_FRONTEND=noninteractive

# things to install
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    bash \
    bc \
    binutils \
    build-essential \
    bzip2 \
    cpio \
    g++ \
    gcc \
    git \
    gzip \
    locales \
    libncurses5-dev \
    libdevmapper-dev \
    libsystemd-dev \
    make \
    mercurial \
    whois \
    patch \
    perl \
    python \
    rsync \
    sed \
    tar \
    vim \ 
    unzip \
    wget \
    bison \
    flex \
    libssl-dev \
    libfdt-dev

# Sometimes Buildroot need proper locale, e.g. when using a toolchain
# based on glibc.
RUN locale-gen en_US.utf8

# add me as a user, prevent that all things done in the container are owned by root
RUN useradd -d /home/jef -m -s /bin/bash jef && echo "jef:jef" | chpasswd && adduser jef sudo
RUN chown -R jef:jef /home/jef
USER jef

# clone this specific buildroot branch
RUN git clone git://git.buildroot.net/buildroot --depth=1 --branch=2019.08.2 /home/jef/buildroot

# set default workdir
WORKDIR /home/jef/target

RUN ["/bin/bash"]
