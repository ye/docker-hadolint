# prebuilt binary isn't statically linked yet, use alipine:3.3 as the base which is one tenth of the size of the official image
FROM ubuntu:16.04
MAINTAINER Ye Wang <ye@users.noreply.github.com>

RUN apt-get update && apt-get install -y -qq --no-install-recommends \
 libgmp-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ADD "https://github.com/lukasmartinelli/hadolint/releases/download/v1.2.1/hadolint_linux_amd64" /bin/hadolint
RUN chmod +x /bin/hadolint

ENTRYPOINT ["hadolint", "-"]
