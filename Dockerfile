FROM alpine:3.12.0

LABEL maintainer="Jonathan Le Bonzec <jonathan@tind.io>"
LABEL organization="TIND"
LABEL alpine-version="3.12.0"

RUN apk add gettext
