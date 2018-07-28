FROM zenika/alpine-kotlin:1.2.51-jdk8

RUN apk update
RUN apk add gradle
RUN apk --no-cache add ca-certificates wget
RUN wget --quiet --output-document=/etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-java-openjfx/releases/download/8.151.12-r0/java-openjfx-8.151.12-r0.apk
RUN apk add --no-cache java-openjfx-8.151.12-r0.apk
