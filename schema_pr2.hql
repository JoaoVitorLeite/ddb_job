-- create database

create database if not exists polroute2;

-- use database

use polroute2;

-- create tables

CREATE TABLE IF NOT EXISTS pr_crime (
    id INT,
    total_femicide INT,
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

-- FHP pr_time

CREATE TABLE pr_time_T1 AS 
SELECT * 
FROM pr_time 
WHERE 
    year <= 2014 AND 
    month = 11 AND 
    (UPPER(weekday) = 'SATURDAY' OR UPPER(weekday) = 'SUNDAY');

CREATE TABLE pr_time_T2 AS 
SELECT * 
FROM pr_time 
WHERE 
    year <= 2014 AND
    month = 11 AND
    (UPPER(weekday) != 'SATURDAY' AND UPPER(weekday) != 'SUNDAY');

CREATE TABLE pr_time_T3 AS 
SELECT * 
FROM pr_time 
WHERE 
    year <= 2014 AND 
    month != 11 AND 
    (UPPER(weekday) = 'SATURDAY' OR UPPER(weekday) = 'SUNDAY');

CREATE TABLE pr_time_T4 AS 
SELECT * 
FROM pr_time 
WHERE 
    year <= 2014 AND 
    month != 11 AND 
    (UPPER(weekday) != 'SATURDAY' AND UPPER(weekday) != 'SUNDAY');

CREATE TABLE pr_time_T5 AS 
SELECT * 
FROM pr_time 
WHERE 
    year = 2015 AND 
    month = 11 AND 
    (UPPER(weekday) = 'SATURDAY' OR UPPER(weekday) = 'SUNDAY');

CREATE TABLE pr_time_T6 AS 
SELECT * 
FROM pr_time 
WHERE 
    year = 2015 AND 
    month = 11 AND 
    (UPPER(weekday) != 'SATURDAY' AND UPPER(weekday) != 'SUNDAY');

CREATE TABLE pr_time_T7 AS 
SELECT * 
FROM pr_time 
WHERE 
    year = 2015 AND 
    month != 11 AND 
    (UPPER(weekday) = 'SATURDAY' OR UPPER(weekday) = 'SUNDAY');

CREATE TABLE pr_time_T8 AS 
SELECT * 
FROM pr_time 
WHERE 
    year = 2015 AND 
    month != 11 AND 
    (UPPER(weekday) != 'SATURDAY' AND UPPER(weekday) != 'SUNDAY');

CREATE TABLE pr_time_T9 AS 
SELECT * 
FROM pr_time 
WHERE 
    year = 2016 AND 
    month = 11 AND 
    (UPPER(weekday) = 'SATURDAY' OR UPPER(weekday) = 'SUNDAY');

CREATE TABLE pr_time_T10 AS 
SELECT * 
FROM pr_time 
WHERE 
    year = 2016 AND 
    month = 11 AND 
    (UPPER(weekday) != 'SATURDAY' AND UPPER(weekday) != 'SUNDAY');

CREATE TABLE pr_time_T11 AS 
SELECT * 
FROM pr_time 
WHERE 
    year = 2016 AND 
    month != 11 AND 
    (UPPER(weekday) = 'SATURDAY' OR UPPER(weekday) = 'SUNDAY');

CREATE TABLE pr_time_T12 AS 
SELECT * 
FROM pr_time 
WHERE 
    year = 2016 AND 
    month != 11 AND 
    (UPPER(weekday) != 'SATURDAY' AND UPPER(weekday) != 'SUNDAY');

CREATE TABLE pr_time_T13 AS 
SELECT * 
FROM pr_time 
WHERE 
    year = 2017 AND 
    month = 11 AND 
    (UPPER(weekday) = 'SATURDAY' OR UPPER(weekday) = 'SUNDAY');

CREATE TABLE pr_time_T14 AS 
SELECT * 
FROM pr_time 
WHERE 
    year = 2017 AND 
    month = 11 AND 
    (UPPER(weekday) != 'SATURDAY' AND UPPER(weekday) != 'SUNDAY');

CREATE TABLE pr_time_T15 AS 
SELECT * 
FROM pr_time 
WHERE 
    year = 2017 AND 
    month != 11 AND 
    (UPPER(weekday) = 'SATURDAY' OR UPPER(weekday) = 'SUNDAY');

CREATE TABLE pr_time_T16 AS 
SELECT * 
FROM pr_time 
WHERE 
    year = 2017 AND 
    month != 11 AND 
    (UPPER(weekday) != 'SATURDAY' AND UPPER(weekday) != 'SUNDAY');

CREATE TABLE pr_time_T17 AS 
SELECT * 
FROM pr_time 
WHERE 
    year >= 2018 AND 
    month = 11 AND 
    (UPPER(weekday) = 'SATURDAY' OR UPPER(weekday) = 'SUNDAY');

CREATE TABLE pr_time_T18 AS 
SELECT * 
FROM pr_time 
WHERE 
    year >= 2018 AND 
    month = 11 AND 
    (UPPER(weekday) != 'SATURDAY' AND UPPER(weekday) != 'SUNDAY');

CREATE TABLE pr_time_T19 AS 
SELECT * 
FROM pr_time 
WHERE 
    year >= 2018 AND 
    month != 11 AND 
    (UPPER(weekday) = 'SATURDAY' OR UPPER(weekday) = 'SUNDAY');

CREATE TABLE pr_time_T20 AS 
SELECT * 
FROM pr_time
WHERE 
    year >= 2018 AND 
    month != 11 AND 
    (UPPER(weekday) != 'SATURDAY' AND UPPER(weekday) != 'SUNDAY');

-- FHP pr_district

CREATE TABLE pr_district_IGUATEMI AS 
SELECT * 
FROM pr_district 
WHERE name = 'IGUATEMI';

CREATE TABLE pr_district_NOT_IGUATEMI AS 
SELECT * 
FROM pr_district 
WHERE name != 'IGUATEMI';

-- FHP pr_neighborhood
CREATE TABLE pr_neighborhood_SANTAEFIGENIA AS 
SELECT * 
FROM pr_neighborhood 
WHERE name = 'Santa Efig�nia';

CREATE TABLE pr_neighborhood_NOT_SANTAEFIGENIA AS 
SELECT * 
FROM pr_neighborhood 
WHERE name != 'Santa Efig�nia';

-- FHD pr_crime

CREATE TABLE pr_crime_T1 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T1 
    ON pr_crime.time_id = pr_time_T1.id;

CREATE TABLE pr_crime_T2 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T2 
    ON pr_crime.time_id = pr_time_T2.id;

CREATE TABLE pr_crime_T3 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T3 
    ON pr_crime.time_id = pr_time_T3.id;

CREATE TABLE pr_crime_T4 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T4 
    ON pr_crime.time_id = pr_time_T4.id;

CREATE TABLE pr_crime_T5 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T5 
    ON pr_crime.time_id = pr_time_T5.id;

CREATE TABLE pr_crime_T6 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T6 
    ON pr_crime.time_id = pr_time_T6.id;

CREATE TABLE pr_crime_T7 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T7 
    ON pr_crime.time_id = pr_time_T7.id;

CREATE TABLE pr_crime_T8 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T8 
    ON pr_crime.time_id = pr_time_T8.id;

CREATE TABLE pr_crime_T9 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T9 
    ON pr_crime.time_id = pr_time_T9.id;

CREATE TABLE pr_crime_T10 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T10 
    ON pr_crime.time_id = pr_time_T10.id;

CREATE TABLE pr_crime_T11 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T11 
    ON pr_crime.time_id = pr_time_T11.id;

CREATE TABLE pr_crime_T12 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T12 
    ON pr_crime.time_id = pr_time_T12.id;

CREATE TABLE pr_crime_T13 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T13 
    ON pr_crime.time_id = pr_time_T13.id;

CREATE TABLE pr_crime_T14 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T14 
    ON pr_crime.time_id = pr_time_T14.id;

CREATE TABLE pr_crime_T15 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T15 
    ON pr_crime.time_id = pr_time_T15.id;

CREATE TABLE pr_crime_T16 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T16 
    ON pr_crime.time_id = pr_time_T16.id;

CREATE TABLE pr_crime_T17 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T17 
    ON pr_crime.time_id = pr_time_T17.id;

CREATE TABLE pr_crime_T18 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T18 
    ON pr_crime.time_id = pr_time_T18.id;

CREATE TABLE pr_crime_T19 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T19 
    ON pr_crime.time_id = pr_time_T19.id;

CREATE TABLE pr_crime_T20 AS 
SELECT pr_crime.* 
FROM pr_crime 
JOIN pr_time_T20 
    ON pr_crime.time_id = pr_time_T20.id;

-- FHD pr_vertice

CREATE TABLE pr_vertice_pr_district_IGUATEMI AS 
SELECT pr_vertice.* 
FROM pr_vertice 
JOIN pr_district_IGUATEMI 
    ON pr_vertice.district_id = pr_district_IGUATEMI.id;

CREATE TABLE pr_vertice_pr_neighborhood_SANTAEFIGENIA AS 
SELECT pr_vertice.* 
FROM pr_vertice 
JOIN pr_neighborhood_SANTAEFIGENIA 
    ON pr_vertice.neighborhood_id = pr_neighborhood_SANTAEFIGENIA.id;

CREATE TABLE pr_vertice_NOT_pr_district_IGUATEMI AS 
SELECT pr_vertice.* 
FROM pr_vertice 
JOIN pr_district_NOT_IGUATEMI 
    ON pr_vertice.district_id = pr_district_NOT_IGUATEMI.id;

CREATE TABLE pr_vertice_not_pr_neighborhood_SANTAEFIGENIA AS 
SELECT pr_vertice.* 
FROM pr_vertice 
JOIN pr_neighborhood_NOT_SANTAEFIGENIA 
    ON pr_vertice.neighborhood_id = pr_neighborhood_NOT_SANTAEFIGENIA.id;

-- FHD pr_segment

CREATE TABLE pr_segment_pr_district_IGUATEMI AS 
SELECT pr_segment.* 
FROM pr_segment 
JOIN pr_vertice_pr_district_IGUATEMI 
    ON pr_segment.start_vertice_id = pr_vertice_pr_district_IGUATEMI.id OR pr_segment.final_vertice_id = pr_vertice_pr_district_IGUATEMI.id;

CREATE TABLE pr_segment_pr_neighborhood_SANTAEFIGENIA AS 
SELECT pr_segment.* 
FROM pr_segment 
JOIN pr_vertice_pr_neighborhood_SANTAEFIGENIA 
    ON pr_segment.start_vertice_id = pr_vertice_pr_neighborhood_SANTAEFIGENIA.id OR pr_segment.final_vertice_id = pr_vertice_pr_neighborhood_SANTAEFIGENIA.id;

CREATE TABLE pr_segment_not_pr_district_IGUATEMI AS 
SELECT pr_segment.* 
FROM pr_segment
JOIN pr_vertice_NOT_pr_district_IGUATEMI 
    ON pr_segment.start_vertice_id = pr_vertice_NOT_pr_district_IGUATEMI.id OR pr_segment.final_vertice_id = pr_vertice_NOT_pr_district_IGUATEMI.id;

CREATE TABLE pr_segment_not_pr_neighborhood_SANTAEFIGENIA AS 
SELECT pr_segment.* 
FROM pr_segment
JOIN pr_vertice_not_pr_neighborhood_SANTAEFIGENIA 
    ON pr_segment.start_vertice_id = pr_vertice_not_pr_neighborhood_SANTAEFIGENIA.id OR pr_segment.final_vertice_id = pr_vertice_not_pr_neighborhood_SANTAEFIGENIA.id;
