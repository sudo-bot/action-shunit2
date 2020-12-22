FROM shellspec/kcov

ARG RELEASE_VERSION=2.1.8

# Metadata params
ARG VCS_REF
ARG BUILD_DATE

COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community shunit2=${RELEASE_VERSION}-r0

# Metadata
LABEL org.label-schema.vendor="Sudo-Bot" \
    org.label-schema.url="https://github.com/kward/shunit2#readme" \
    org.label-schema.name="shunit2 action" \
    org.label-schema.description="shunit2 action for GitHub actions" \
    org.label-schema.version=${RELEASE_VERSION} \
    org.label-schema.vcs-url="https://github.com/kward/shunit2.git" \
    org.label-schema.vcs-ref=${VCS_REF} \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.docker.schema-version="1.0"

ENTRYPOINT ["/entrypoint.sh"]
