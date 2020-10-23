FROM spark-base

# -- Runtime

ARG spark_master_web_ui=8080
# ARG spark_driver_web_ui=4040 
# this is the port of the driver -> the driver exists only for the run time of the application
# typically the driver is launched on the client host, i.e. the zeppelin server

EXPOSE ${spark_master_web_ui} ${SPARK_MASTER_PORT}
# ${spark_driver_web_ui}
CMD bin/spark-class org.apache.spark.deploy.master.Master >> logs/spark-master.out

