#openjdk:11 / 3.16
FROM alpine:latest

RUN apk add bash\
&& apk add openjdk11
#&& apk add maven\
#&& apk add postgresql\
#&& apk add mc\
#&& apk add sudo\
#&& apk add --no-cache curl


ARG PROFILE

ENV PROFILE_VAR=$PROFILE

ADD target/GitTest1-0.0.1-SNAPSHOT.jar GitTest1-0.0.1-SNAPSHOT.jar

RUN echo "Kuku: $PROFILE !!!!"

RUN java -jar /GitTest1-0.0.1-SNAPSHOT.jar

#ENTRYPOINT ["/bin/bash", "-c", "java","-Dspring.profiles.active=$PROFILE_VAR","-jar","/GitTest1-0.0.1-SNAPSHOT.jar"]
## DO NOT USE(The variable would not be substituted): ENTRYPOINT ["java","-Dspring.profiles.active=$PROFILE_VAR","-jar","/hello-world-docker-action.jar"]
## CAN ALSO USE: ENTRYPOINT java -Dspring.profiles.active=$PROFILE_VAR -jar /hello-world-docker-action.jar
#ENTRYPOINT java -Dspring.profiles.active=$PROFILE_VAR -jar /GitTest1-0.0.1-SNAPSHOT.jar

# Another way
## Build a shell script because the ENTRYPOINT command doesn't like using ENV
#RUN echo "#!/bin/bash \n java -Dspring.profiles.active=${PROFILE_VAR} -jar /hello-world-docker-action.jar" > ./entrypoint.sh
#RUN chmod +x ./entrypoint.sh

EXPOSE 8080

