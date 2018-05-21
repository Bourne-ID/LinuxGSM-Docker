#
# LinuxGSM Dockerfile
#
# https://github.com/GameServerManagers/LinuxGSM-Docker
#

FROM bourneid/linuxgsm-docker-base
LABEL maintainer="Bourne-ID <admin@h-r-l.co.uk> - Original By; LinuxGSM <me@Danielgibbs.co.uk> "

ADD git.tar.gz /test1

CMD /bin/bash