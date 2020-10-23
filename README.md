# ETL in th PySpark (SQL) in docker containers 

- ETL/ELT in PySpark, as local excersise by using services in docker containers set-up and managed with docker-compose 

## Structure of environment
- Source Postgresql DB
- Target Postgresql DB
- Spark Master
- 2 Spark Cluster nodes
- Zeppelin server

## Bring up environment

```
docker-compose -f docker-compose.all_postg_zep_spark.yml up
```

**Informtion Sources used in project**

https://towardsdatascience.com/apache-spark-cluster-on-docker-ft-a-juyterlab-interface-418383c95445

https://stackoverflow.com/questions/57638836/how-to-setup-apache-spark-and-zeppelin-on-docker
