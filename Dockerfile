FROM openjdk:16-jdk-alpine3.12
LABEL maintainer="barrywalker@gmail.com"

ADD https://github.com/irmen/prog8/releases/download/v4.5/prog8compiler-4.5-all.jar /
ADD https://github.com/irmen/64tass/archive/v1.55.2244.zip /

RUN apk add make gcc musl-dev \
    && unzip /v1.55.2244.zip \
    && cd /64tass-1.55.2244 \
    && make install \
    && rm -rf /v1.55.2244.zip \
    && rm -rf /64tass-1.55.2244 \
    && apk del make gcc musl-dev

ENTRYPOINT ["java", "-jar", "/prog8compiler-4.5-all.jar"]
