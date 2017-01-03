# VERSION 1.0.2.1
# 作者：黄俊杰
# 进行中间件测试
FROM java:8

# 签名
MAINTAINER hvail "415195993@qq.com"

# RUN rm -rf /var/lib/apt/lists/*
RUN ping -c 10 10.1.2.156
# ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64 
ENV LISTEN_PORT 5990
ENV MQ_RABBIT_HOST 10.1.2.156
ENV MQ_RABBIT_NAME hvail
ENV MQ_RABBIT_PASSWORD hvail
EXPOSE 5990

ADD GPSNetCore.GPSReceiver.jar /var/docker/receiver/GPSNetCore.GPSReceiver.jar

RUN echo Start Receiver Program

ENTRYPOINT java -jar /var/docker/receiver/GPSNetCore.GPSReceiver.jar

