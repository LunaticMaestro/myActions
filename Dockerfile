FROM alpine

RUN apk add --no-cache \
    bash \
    httpie \
    jq
RUN which bash && \
 which http && \
 which jq

ENV GITHUB_EVENT_PATH=/home/test.json
COPY myscript.sh /usr/local/bin/myscript.sh
COPY test.json /home

ENTRYPOINT [ "myscript.sh" ]