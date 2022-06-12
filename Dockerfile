#### Build
FROM rust:1-alpine

RUN apk update && apk add \
  make \
  gcc \
  g++ \
  pinentry

RUN cargo install rbw

#### Run
FROM alpine:latest

RUN apk --no-cache add \
  pinentry \
  vim \
  su-exec

ENV UID=1000

COPY --from=0 /usr/local/cargo/bin/rbw /usr/local/bin/rbw
COPY --from=0 /usr/local/cargo/bin/rbw-agent /usr/local/bin/rbw-agent
COPY files/ /

ENTRYPOINT ["/drop_privs.sh"]

