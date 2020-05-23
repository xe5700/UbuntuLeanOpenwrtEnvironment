FROM ubuntu:18.04
RUN apt update && apt install -y ca-certificates && \
apt clean
RUN echo Install huawei mirror && \
sed -i "s@http://.*archive.ubuntu.com@http://mirrors.huaweicloud.com@g" /etc/apt/sources.list && \
sed -i "s@http://.*security.ubuntu.com@http://mirrors.huaweicloud.com@g" /etc/apt/sources.list && \
apt update && \
apt install -y busybox build-essential asciidoc &&\
binutils bzip2 gawk gettext git libncurses5-dev &&\
libz-dev patch python3.5 python2.7 unzip zlib1g-dev &&\
lib32gcc1 libc6-dev-i386 subversion flex uglifyjs &&\
git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev &&\
texinfo libglib2.0-dev xmlto qemu-utils &&\
upx libelf-dev autoconf automake &&\
libtool autopoint device-tree-compiler g++-multilib antlr3 gperf &&\
proxychains && \
apt clean