FROM debian:bullseye

COPY bash.bashrc /etc/

RUN apt-get update && apt-get install -y wget

RUN wget https://github.com/atanunq/viu/releases/download/v1.5.0/viu-x86_64-unknown-linux-musl -O /usr/local/bin/viu && \
    chmod +x /usr/local/bin/viu

ENV TERM=xterm-kitty

COPY image.jpg /tmp/

ENTRYPOINT ["bash"]
