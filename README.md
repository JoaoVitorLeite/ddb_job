# ddb_job

## Setting Up Hive with Docker

To use Hive docker, make sure [docker](https://www.docker.com/) is previously installed. After installing docker, run the commands:

* Download the image:

```
docker pull apache/hive:4.0.0-alpha-2
```

* Export version:

```
export HIVE_VERSION=4.0.0-alpha-2
```

* Create the container:

```
docker run -d -p 10000:10000 -p 10002:10002 --env SERVICE_NAME=hiveserver2 --name hive4 apache/hive:${HIVE_VERSION}
```

If everything went correctly you can access docker through the terminal with the command:

```
docker exec -it hive4 /bin/bash
```

## Dataset

The dataset CSV files are available in [PolRoute-DS](https://osf.io/mxrgu/).
