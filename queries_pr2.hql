-- 1

SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T9 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T9 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year = 2016
GROUP BY 
    s.id;


SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T10 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T10 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year = 2016
GROUP BY 
    s.id;


SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T11 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T11 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year = 2016
GROUP BY 
    s.id;

    


SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T12 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T12 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year = 2016
GROUP BY 
    s.id;

-- 2

SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T1 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T1 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year >= 2006 AND t.year <= 2016
GROUP BY 
    s.id;

SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T2 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T2 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year >= 2006 AND t.year <= 2016
GROUP BY 
    s.id;

SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T3 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T3 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year >= 2006 AND t.year <= 2016
GROUP BY 
    s.id;

SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T4 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T4 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year >= 2006 AND t.year <= 2016
GROUP BY 
    s.id;

SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T5 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T5 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year >= 2006 AND t.year <= 2016
GROUP BY 
    s.id;


SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T6 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T6 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year >= 2006 AND t.year <= 2016
GROUP BY 
    s.id;

SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T7 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T7 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year >= 2006 AND t.year <= 2016
GROUP BY 
    s.id;

SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T8 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T8 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year >= 2006 AND t.year <= 2016
GROUP BY 
    s.id;

SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T9 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T9 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year >= 2006 AND t.year <= 2016
GROUP BY 
    s.id;

SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T10 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T10 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year >= 2006 AND t.year <= 2016
GROUP BY 
    s.id;

SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T11 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T11 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year >= 2006 AND t.year <= 2016
GROUP BY 
    s.id;


SELECT 
    s.id AS segment_id, 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T12 c
    JOIN pr_segment_pr_district_IGUATEMI s ON c.segment_id = s.id
    JOIN pr_vertice_pr_district_IGUATEMI v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_district_IGUATEMI d ON v.district_id = d.id
    JOIN pr_time_T12 t ON c.time_id = t.id
WHERE 
    d.name = 'IGUATEMI' AND t.year >= 2006 AND t.year <= 2016
GROUP BY 
    s.id;

-- 3

SELECT 
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T5 c
    JOIN pr_segment_pr_neighborhood_SANTAEFIGENIA s ON c.segment_id = s.id
    JOIN pr_vertice_pr_neighborhood_SANTAEFIGENIA v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_neighborhood_SANTAEFIGENIA n ON v.neighborhood_id = n.id
    JOIN pr_time_T5 t ON c.time_id = t.id
WHERE 
    n.name = 'Santa Efig�nia' AND t.year = 2015;

SELECT 
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T6 c
    JOIN pr_segment_pr_neighborhood_SANTAEFIGENIA s ON c.segment_id = s.id
    JOIN pr_vertice_pr_neighborhood_SANTAEFIGENIA v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_neighborhood_SANTAEFIGENIA n ON v.neighborhood_id = n.id
    JOIN pr_time_T7 t ON c.time_id = t.id
WHERE 
    n.name = 'Santa Efig�nia' AND t.year = 2015;

SELECT 
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T7 c
    JOIN pr_segment_pr_neighborhood_SANTAEFIGENIA s ON c.segment_id = s.id
    JOIN pr_vertice_pr_neighborhood_SANTAEFIGENIA v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_neighborhood_SANTAEFIGENIA n ON v.neighborhood_id = n.id
    JOIN pr_time_T7 t ON c.time_id = t.id
WHERE 
    n.name = 'Santa Efig�nia' AND t.year = 2015;

SELECT 
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T8 c
    JOIN pr_segment_pr_neighborhood_SANTAEFIGENIA s ON c.segment_id = s.id
    JOIN pr_vertice_pr_neighborhood_SANTAEFIGENIA v ON s.start_vertice_id = v.id OR s.final_vertice_id = v.id
    JOIN pr_neighborhood_SANTAEFIGENIA n ON v.neighborhood_id = n.id
    JOIN pr_time_T8 t ON c.time_id = t.id
WHERE 
    n.name = 'Santa Efig�nia' AND t.year = 2015;

-- 4

SELECT 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T1 c
    JOIN pr_segment s ON c.segment_id = s.id
    JOIN pr_time_T1 t ON c.time_id = t.id
WHERE 
    s.oneway = 'yes' AND t.year = 2012;

SELECT 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T2 c
    JOIN pr_segment s ON c.segment_id = s.id
    JOIN pr_time_T2 t ON c.time_id = t.id
WHERE 
    s.oneway = 'yes' AND t.year = 2012;

SELECT 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T3 c
    JOIN pr_segment s ON c.segment_id = s.id
    JOIN pr_time_T3 t ON c.time_id = t.id
WHERE 
    s.oneway = 'yes' AND t.year = 2012;

SELECT 
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T4 c
    JOIN pr_segment s ON c.segment_id = s.id
    JOIN pr_time_T4 t ON c.time_id = t.id
WHERE 
    s.oneway = 'yes' AND t.year = 2012;

-- 5

SELECT 
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T13 c
    JOIN pr_time_T13 t ON c.time_id = t.id
WHERE 
    t.year = 2017;

SELECT 
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T14 c
    JOIN pr_time_T14 t ON c.time_id = t.id
WHERE 
    t.year = 2017;

SELECT 
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T15 c
    JOIN pr_time_T15 t ON c.time_id = t.id
WHERE 
    t.year = 2017;

SELECT 
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    pr_crime_T16 c
    JOIN pr_time_T16 t ON c.time_id = t.id
WHERE 
    t.year = 2017;

-- 6

SELECT 
    segment_id
FROM 
    pr_crime_T1 c
    JOIN pr_time_T1 t ON c.time_id = t.id
WHERE 
    t.month = 11 AND t.year = 2010
GROUP BY 
    segment_id
ORDER BY 
    SUM(c.total_femicide + c.total_homicide + c.total_felony_murder + c.total_bodily_harm + c.total_theft_cellphone + c.total_armed_robbery_cellphone + c.total_theft_auto + c.total_armed_robbery_auto) DESC
LIMIT 10;

SELECT 
    segment_id
FROM 
    pr_crime_T2 c
    JOIN pr_time_T2 t ON c.time_id = t.id
WHERE 
    t.month = 11 AND t.year = 2010
GROUP BY 
    segment_id
ORDER BY 
    SUM(c.total_femicide + c.total_homicide + c.total_felony_murder + c.total_bodily_harm + c.total_theft_cellphone + c.total_armed_robbery_cellphone + c.total_theft_auto + c.total_armed_robbery_auto) DESC
LIMIT 10;

-- 7

SELECT 
    segment_id
FROM 
    pr_crime_T17 c
    JOIN pr_time_T17 t ON c.time_id = t.id
WHERE 
    t.weekday IN ('saturday', 'sunday') AND t.year = 2018
GROUP BY 
    segment_id
ORDER BY 
    SUM(c.total_femicide + c.total_homicide + c.total_felony_murder + c.total_bodily_harm + c.total_theft_cellphone + c.total_armed_robbery_cellphone + c.total_theft_auto + c.total_armed_robbery_auto) DESC
LIMIT 10;

SELECT 
    segment_id
FROM 
    pr_crime_T19 c
    JOIN pr_time_T19 t ON c.time_id = t.id
WHERE 
    t.weekday IN ('saturday', 'sunday')  AND t.year = 2018
GROUP BY 
    segment_id
ORDER BY 
    SUM(c.total_femicide + c.total_homicide + c.total_felony_murder + c.total_bodily_harm + c.total_theft_cellphone + c.total_armed_robbery_cellphone + c.total_theft_auto + c.total_armed_robbery_auto) DESC
LIMIT 10;