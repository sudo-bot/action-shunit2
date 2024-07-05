FROM shellspec/kcov

ARG RELEASE_VERSION=2.1.8

# Metadata params
ARG VCS_REF
ARG BUILD_DATE

COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/3.20/community shunit2=${RELEASE_VERSION}-r1

# Metadata
LABEL org.label-schema.vendor="Sudo-Bot" \
    org.label-schema.url="https://github.com/sudo-bot/action-shunit2#readme" \
    org.label-schema.name="shunit2 GitHub action" \
    org.label-schema.description="shunit2 action for GitHub actions" \
    org.label-schema.version=${RELEASE_VERSION} \
    org.label-schema.vcs-url="https://github.com/sudo-bot/action-shunit2.git" \
    org.label-schema.vcs-ref=${VCS_REF} \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.docker.schema-version="1.0" \
    \
    com.docker.extension.publisher-url="https://github.com/wdes" \
    \
    org.opencontainers.image.title="shunit2 GitHub action" \
    org.opencontainers.image.description="shunit2 action for GitHub actions" \
    org.opencontainers.image.authors="williamdes@wdes.fr" \
    org.opencontainers.image.url="https://github.com/sudo-bot/action-shunit2#readme" \
    org.opencontainers.image.documentation="https://github.com/sudo-bot/action-shunit2#readme" \
    org.opencontainers.image.source="https://github.com/sudo-bot/action-shunit2" \
    org.opencontainers.image.vendor="Sudo-Bot" \
    org.opencontainers.image.licenses="MPL-2.0" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.version=${RELEASE_VERSION} \
    org.opencontainers.image.revision=${VCS_REF} \
    org.opencontainers.image.ref.name="latest"

ENTRYPOINT ["/entrypoint.sh"]
