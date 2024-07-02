#!/bin/sh

docker cp data/crime.csv hive4:/tmp
docker cp data/district.csv hive4:/tmp
docker cp data/neighborhood.csv hive4:/tmp
docker cp data/segment.csv hive4:/tmp
docker cp data/time.csv hive4:/tmp
docker cp data/vertice.csv hive4:/tmp
