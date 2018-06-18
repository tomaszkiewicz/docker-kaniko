FROM gcr.io/kaniko-project/executor:latest

COPY pause /pause

RUN mkdir -p /bin
COPY busybox /bin/busybox

RUN ln -s /bin/busybox /bin/touch; \
    ln -s /bin/busybox /bin/sleep; \
    ln -s /bin/busybox /bin/sh
