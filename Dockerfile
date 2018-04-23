FROM bewildr/docker-alpine-s6-overlay
ARG CONFD_VERSION=0.16.0
ARG CONFD_URL=https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64
LABEL maintainer="Aadryn <aadryn@users.noreply.github.com>"
LABEL confd=${CONFD_VERSION}
COPY root.fs /
RUN curl -fsL ${CONFD_URL} -o /usr/bin/confd \
    && chmod +x /usr/bin/confd
STOPSIGNAL SIGTERM