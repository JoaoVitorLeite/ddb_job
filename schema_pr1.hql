-- create database

create database if not exists polroute1;

-- use database

use polroute1;

-- create tables

CREATE TABLE IF NOT EXISTS pr_crime (
    id INT,
    total_feminicide INT,
    total_homicide INT,
    total_felony_murder INT,
    total_bodily_harm INT,
    total_theft_cellphone INT,
    total_armed_robbery_cellphone INT,
    total_theft_auto INT,
    total_armed_robbery_auto INT,
    segment_id INT,
    time_id INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ';'
STORED AS TEXTFILE
tblproperties ("skip.header.line.count"="1");


CREATE TABLE IF NOT EXISTS pr_district (
    id INT,
    name STRING,
    geometry STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ';'
STORED AS TEXTFILE
tblproperties ("skip.header.line.count"="1");


CREATE TABLE IF NOT EXISTS pr_neighborhood (
    id INT,
    name STRING,
    geometry STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ';'
STORED AS TEXTFILE
tblproperties ("skip.header.line.count"="1");


CREATE TABLE IF NOT EXISTS pr_segment (
    id INT,
    geometry STRING,
    oneway STRING,
    length DOUBLE,
    final_vertice_id INT,
    start_vertice_id INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ';'
STORED AS TEXTFILE
tblproperties ("skip.header.line.count"="1");


CREATE TABLE IF NOT EXISTS pr_time (
    id INT,
    period STRING,
    day INT,
    month INT,
    year INT,
    weekday STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ';'
STORED AS TEXTFILE
tblproperties ("skip.header.line.count"="1");


CREATE TABLE IF NOT EXISTS pr_vertice (
  id INT,
  label INT,
  district_id INT,
  neighborhood_id INT,
  zone_id INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ';'
STORED AS TEXTFILE
tblproperties ("skip.header.line.count"="1");

-- Load data

LOAD DATA INPATH '/tmp/crime.csv' OVERWRITE INTO TABLE pr_crime;
LOAD DATA INPATH '/tmp/district.csv' OVERWRITE INTO TABLE pr_district;
LOAD DATA INPATH '/tmp/neighborhood.csv' OVERWRITE INTO TABLE pr_neighborhood;
LOAD DATA INPATH '/tmp/segment.csv' OVERWRITE INTO TABLE pr_segment;
LOAD DATA INPATH '/tmp/time.csv' OVERWRITE INTO TABLE pr_time;
LOAD DATA INPATH '/tmp/vertice.csv' OVERWRITE INTO TABLE pr_vertice;
