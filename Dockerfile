FROM debian:latest

ENV container docker
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://ftp.es.debian.org/debian/ buster main contrib non-free" >> /etc/apt/sources.list
RUN apt-get update \
    && apt-get install -y systemd git gpg wget curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN rm -f /lib/systemd/system/multi-user.target.wants/* \
    /etc/systemd/system/*.wants/* \
    /lib/systemd/system/local-fs.target.wants/* \
    /lib/systemd/system/sockets.target.wants/*udev* \
    /lib/systemd/system/sockets.target.wants/*initctl* \
    /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup* \
    /lib/systemd/system/systemd-update-utmp*

RUN cd /root && wget https://raw.githubusercontent.com/deividgdt/dockerpicentreon/master/centreon_central.sh
RUN chmod +x centreon_central.sh


VOLUME [ "/sys/fs/cgroup" ]

CMD ["/lib/systemd/systemd"]
