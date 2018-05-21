#
# LinuxGSM Dockerfile
#
# https://github.com/GameServerManagers/LinuxGSM-Docker
#

FROM bourne-uid
LABEL maintainer="Bourne-ID <admin@h-r-l.co.uk> - Original By; LinuxGSM <me@Danielgibbs.co.uk>"

ENV DEBIAN_FRONTEND noninteractive

## lgsm.sh
RUN wget https://linuxgsm.com/dl/linuxgsm.sh

## user config
RUN adduser --disabled-password --gecos "" lgsm && \
	chown lgsm:lgsm /linuxgsm.sh && \
	chmod +x /linuxgsm.sh && \
	cp /linuxgsm.sh /home/lgsm/linuxgsm.sh && \
	usermod -G tty lgsm

USER lgsm
WORKDIR /home/lgsm

# need use xterm for LinuxGSM
ENV TERM=xterm

## Docker Details
ENV PATH=$PATH:/home/lgsm

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["bash","/entrypoint.sh" ]