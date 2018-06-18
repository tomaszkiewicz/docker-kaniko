FROM gcr.io/kaniko-project/executor:latest

COPY pause /pause

COPY busybox /busybox
COPY busybox /bin/sh

RUN /busybox mkdir -p /bin

RUN ln -s /busybox /bin/touch; \
    ln -s /busybox /bin/sleep; \
    ln -s /busybox /bin/sh
