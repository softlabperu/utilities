FROM debian:9

ADD . /opt/utilities
RUN chmod +x -R /opt/utilities
ENV PATH="${PATH}:/opt/utilities/scripts"
RUN apt update && apt install -y git bc curl iputils-ping openssh-client openvpn openconnect zip
