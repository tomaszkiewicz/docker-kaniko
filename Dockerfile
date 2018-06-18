FROM gcr.io/kaniko-project/executor:latest

COPY pause /pause
RUN mkdir -p /bin
COPY sh /bin/sh
