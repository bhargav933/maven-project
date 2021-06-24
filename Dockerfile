FROM ubuntu:16.04
MAINTAINER Bhargav Lalaji "bhargav.lalaji@slscorp.com"
	
RUN apt-get update && apt-get install -y \
	build-essential libncurses5-dev gawk git libssl-dev gettext zlib1g-dev swig unzip time \
	wget python subversion file cmake\
	intltool quilt vim bc liblzo2-dev tree \ 
	# for AG35
	checkpolicy cryptsetup-bin kmod python3 python3-pip \
	# For secboot
	mtd-utils squashfs-tools libxml2-utils cryptsetup-bin liblzo2-dev python-lzo python-crcmod python-setuptools \
	# Clean up
	&& rm -rf /var/lib/apt/lists/*

COPY . /opt

WORKDIR /opt

