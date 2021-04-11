FROM centos:7
MAINTAINER tzchz.pp.ua

RUN mkdir -p /home/cloudreve-bin

RUN cd /home/cloudreve-bin \
    && curl -O https://cloudreve-bin.tzchz.vercel.app/cloudreve \
    && chmod +x ./cloudreve \
    && dir /home/cloudreve-bin

WORKDIR /home/cloudreve-bin
CMD ["./cloudreve"]
EXPOSE 5212
