FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y build-essential bc python libncurses-dev wget cpio rsync git unzip locales
RUN locale-gen en_US.UTF-8

ADD . /root/buildroot
WORKDIR /root/buildroot

RUN make csky_610_gx6605s_4.9_uclibc_br_defconfig
RUN make
