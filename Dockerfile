FROM alpine:3.22
RUN apk add --no-cache age=1.2.1-r10
WORKDIR /work

COPY scripts/ /usr/local/bin/
RUN chmod +x /usr/local/bin/*.sh
