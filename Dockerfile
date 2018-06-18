FROM gcr.io/kaniko-project/executor:latest

COPY pause /pause

COPY busybox /busybox
COPY busybox /bin/sh

RUN /busybox mkdir -p /bin; \
    /busybox ln -s /busybox /bin/ln; \
    /busybox ln -s /busybox /bin/touch; \
    /busybox ln -s /busybox /bin/sleep; \
    /busybox ln -s /busybox /bin/nohup
