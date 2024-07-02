#!/bin/sh

docker pull apache/hive:4.0.0-alpha-2
export HIVE_VERSION=4.0.0-alpha-2
docker run -d -p 10000:10000 -p 10002:10002 --env SERVICE_NAME=hiveserver2 --name hive4 apache/hive:${HIVE_VERSION}

docker exec -it hive4 /bin/bash
beeline -u jdbc:hive2://localhost:10000
