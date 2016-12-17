FROM lionelnicolas/ubuntu-systemd:1.0.0

ADD build-image cloud-init* /tmp/
RUN /tmp/build-image
