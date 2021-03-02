FROM openjdk:17-jdk-alpine3.12
LABEL maintainer="barrywalker@gmail.com"
ARG VERSION
ENV JAR="/prog8compiler-$VERSION-all.jar"

ADD https://github.com/irmen/prog8/releases/download/v${VERSION}/prog8compiler-${VERSION}-all.jar /
ADD https://github.com/irmen/64tass/archive/v1.55.2244.zip /

RUN apk add make gcc musl-dev \
    && unzip /v1.55.2244.zip \
    && cd /64tass-1.55.2244 \
    && make install \
    && rm -rf /v1.55.2244.zip \
    && rm -rf /64tass-1.55.2244 \
    && apk del make gcc musl-dev

ENTRYPOINT java -jar $JAR
