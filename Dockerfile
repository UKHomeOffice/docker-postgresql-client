FROM alpine:3.7
RUN apk --update add postgresql-client \
    bash \
    && \
    rm -rf /var/cache/apk/* \
    && \
    adduser -D -G postgres -s /bin/bash -h /home/postgres postgres

USER postgres
