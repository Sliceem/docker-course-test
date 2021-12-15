FROM maven:3.8.1-openjdk-11

LABEL "author"="Aleksejs Kiselovs" "company"="Scandiweb"

RUN mkdir docker
WORKDIR /docker

COPY tests ./

RUN mvn dependency:resolve
RUN mvn clean install -DskipTests