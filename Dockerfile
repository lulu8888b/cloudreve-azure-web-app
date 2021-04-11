FROM centos:7
MAINTAINER tzchz.pp.ua

RUN mkdir -p /home/cloudreve-bin

RUN cd /home/cloudreve-bin \
    && wget -P /home/cloudreve-bin/ https://cloudreve-bin.tzchz.vercel.app/cloudreve \
    && chmod +x ./cloudreve

WORKDIR /home/cloudreve-bin
CMD ["./cloudreve"]
EXPOSE 5212
