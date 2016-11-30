# VERSION 1.0.2.1
# 作者：黄俊杰
# 进行中间件测试
FROM ubuntu

# 签名
MAINTAINER hvail "415195993@qq.com"
# Install Java.
RUN \
  apt-get update && \
  apt-get install -y openjdk-8-jdk git openssh-server && \
  rm -rf /var/lib/apt/lists/*
	
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64 
ENV LISTEN_PORT 6001
ENV MQ_RABBIT_HOST 10.27.53.184
ENV MQ_RABBIT_NAME hvail
ENV MQ_RABBIT_PASSWORD hvail
ENV TIMEZONE 0
ENV DATAAREA en-us
EXPOSE 6001
EXPOSE 22
RUN git clone https://code.aliyun.com/kailong.zhang/data_receiver.git /var/docker/receiver
RUN echo Start Receiver Program

ENTRYPOINT java -jar /var/docker/receiver/GPSNetCore.GPSReceiver.jar

