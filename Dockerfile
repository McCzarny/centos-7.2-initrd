FROM centos:7.2.1511

RUN echo $'[dvd]\n\
name=dvd\n\
baseurl=file:///distribution/\n\
enabled=1\n\
gpgcheck=0' >> /etc/yum.repos.d/dvd.repo \
&& yum repolist \
&& yum install -y \
        git xmlto doxygen audit-libs-devel bzip2-devel \
        e2fsprogs-devel zlib-devel dbus-devel rpm-build \
        redhat-rpm-config gcc make device-mapper-devel \
        elfutils-devel gtk2-devel gdk-pixbuf2-devel \
        libX11-devel libXt-devel libXxf86misc-devel \
        libblkid-devel libcurl-devel libnl-devel \
        libselinux-devel libsepol-devel pango-devel \
        python-devel rpm-devel libtool \
        openssh-server unzip java-1.8.0-openjdk-headless \
    && yum clean all

ADD slave.jar /

VOLUME [ "/distribution" ]