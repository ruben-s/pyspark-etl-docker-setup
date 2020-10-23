FROM "apache/zeppelin:0.9.0"

ARG spark_version=3.0.0
ARG hadoop_version=2.7

ENV LOG_TAG="[ZEPPELIN_${Z_VERSION}]:" \
    Z_HOME="/zeppelin" \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    ZEPPELIN_ADDR="0.0.0.0"


USER root

RUN echo "$LOG_TAG apt-update & install curl" && \ 
    apt-get update -y && \
    apt-get install -y curl

RUN echo "$LOG_TAG get spark" && \
    curl https://archive.apache.org/dist/spark/spark-${spark_version}/spark-${spark_version}-bin-hadoop${hadoop_version}.tgz -o spark.tgz 

RUN echo "$LOG_TAG install spark" && \
    tar -xf spark.tgz && \
    mv spark-${spark_version}-bin-hadoop${hadoop_version} /usr/bin/ && \
    mkdir /usr/bin/spark-${spark_version}-bin-hadoop${hadoop_version}/logs && \
    rm spark.tgz

# set user back to user id as set in "FROM" image
USER 1000

EXPOSE 8080 4040

ENV SPARK_HOME /usr/bin/spark-${spark_version}-bin-hadoop${hadoop_version}

