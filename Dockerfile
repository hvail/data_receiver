# VERSION 1.0.2.1
# ���ߣ��ƿ���
# �����м������
FROM ubuntu

# ǩ��
MAINTAINER hvail "415195993@qq.com"

RUN \
  apt-get update && \
  apt-get install -y openjdk-8-jdk && \
  rm -rf /var/lib/apt/lists/*
	
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64 
ENV LISTEN_PORT 5990
ENV MQ_RABBIT_HOST 10.1.2.156
ENV MQ_RABBIT_NAME hvail
ENV MQ_RABBIT_PASSWORD hvail
EXPOSE 5990

ADD GPSNetCore.GPSReceiver.jar /var/docker/receiver/GPSNetCore.GPSReceiver.jar

RUN echo Start Receiver Program

ENTRYPOINT java -jar /var/docker/receiver/GPSNetCore.GPSReceiver.jar

