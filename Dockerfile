#
# LinuxGSM Dockerfile
#
# https://github.com/GameServerManagers/LinuxGSM-Docker
#

FROM bourneid/linuxgsm-docker-base
LABEL maintainer="Bourne-ID <admin@h-r-l.co.uk> - Original By; LinuxGSM <me@Danielgibbs.co.uk> "

RUN wget https://raw.githubusercontent.com/Bourne-ID/LinuxGSM-Docker/feature/experimental/git.tar.gz \
   && tar zxvf git.tar.gz && rm git.tar.gz

CMD /bin/bash