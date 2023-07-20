# Container image that runs your code
FROM alpine:3.18

RUN apk --no-cache add lftp libsass git-lfs
Run apk --no-cache add zola --repository https://dl-cdn.alpinelinux.org/alpine/v3.18/community

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
