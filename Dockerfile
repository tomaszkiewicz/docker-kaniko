FROM gcr.io/kaniko-project/executor:latest

COPY pause /pause

COPY busybox /busybox
COPY busybox /bin/sh

RUN /busybox mkdir -p /bin; /busybox ln -s /busybox /bin/ln

RUN ln -s /busybox /bin/touch; \
    ln -s /busybox /bin/sleep; \
    ln -s /busybox /bin/sh
