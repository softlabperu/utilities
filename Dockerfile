FROM debian:9

RUN apt update && \
apt install -y git bc curl iputils-ping openssh-client openvpn openconnect