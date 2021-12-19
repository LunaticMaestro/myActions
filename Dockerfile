FROM alpine

RUN apk add --no-cache \
    bash \
    httpie \
    jq
RUN which bash && \
 which http && \
 which jq

ENV GITHUB_EVENT_PATH=/home/test.json
COPY myscript.sh /home/myscript.sh
RUN chmod +x /home/myscript.sh
COPY test.json /home

ENTRYPOINT [ "/home/myscript.sh" ]
