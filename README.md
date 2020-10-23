# ETL in th PySpark (SQL) in docker containers 

- ETL/ELT in PySpark, as local excersise by using services in docker containers set-up and managed with docker-compose 

## Structure of environment
- Source Postgresql DB
- Target Postgresql DB
- Spark Master
- 2 Spark Cluster nodes
- Zeppelin server

ToDo: create and make schema of containers, IP Addresses and mounted volumes

## Building the docker containers

ToDo: adapt build.sh to build all correct docker containers.
(Some were manually built.)

## Bring up environment

```
docker-compose -f docker-compose.all_postg_zep_spark.yml up
```

## Open environment

- To open Zeppelin
-- In a browser: [http://172.16.100.30:8080](http://172.16.100.30:8080)
- To open Spark Master
-- In a browser: [http://172.16.100.20:8080](http://172.16.100.20:8080)

**Informtion Sources used in project**

https://towardsdatascience.com/apache-spark-cluster-on-docker-ft-a-juyterlab-interface-418383c95445

https://stackoverflow.com/questions/57638836/how-to-setup-apache-spark-and-zeppelin-on-docker
