-- 1 

SELECT
    s.id AS segment_id,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto,
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone
FROM
    pr_crime c
JOIN
    pr_segment s ON c.segment_id = s.id
JOIN
    pr_vertice v ON s.final_vertice_id = v.id OR s.start_vertice_id = v.id
JOIN
    pr_district d ON v.district_id = d.id
JOIN
    pr_time t ON c.time_id = t.id
WHERE
    d.name = 'IGUATEMI' AND t.year = 2016
GROUP BY
    s.id;

-- 2

SELECT
    s.id AS segment_id,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto,
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone
FROM
    pr_crime c
JOIN
    pr_segment s ON c.segment_id = s.id
JOIN
    pr_vertice v ON s.final_vertice_id = v.id OR s.start_vertice_id = v.id
JOIN
    pr_district d ON v.district_id = d.id
JOIN
    pr_time t ON c.time_id = t.id
WHERE
    d.name = 'IGUATEMI' AND 2006 <= t.year AND t.year <= 2016
GROUP BY
    s.id;

-- 3

SELECT
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM
    pr_crime c
JOIN
    pr_time t ON c.time_id = t.id
JOIN
    pr_segment s ON c.segment_id = s.id
JOIN
    pr_vertice v ON s.final_vertice_id = v.id OR s.start_vertice_id = v.id
JOIN
    pr_neighborhood n ON v.neighborhood_id = n.id
WHERE
    n.name = 'Santa Efig�nia'
    AND t.year = 2015;

-- 4

SELECT
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto,
    SUM(c.total_femicide) AS total_femicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone
FROM
    pr_crime c
JOIN
    pr_time t ON c.time_id = t.id
JOIN
    pr_segment s ON c.segment_id = s.id
WHERE
    s.oneway = 'yes' AND t.year = 2012;

-- 5

SELECT
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone
FROM
    pr_crime c
JOIN
    pr_time t ON c.time_id = t.id
WHERE
    t.year = 2017;

-- 6

SELECT
    c.segment_id,
    SUM(c.total_theft_auto + 
        c.total_armed_robbery_auto + 
        c.total_femicide + 
        c.total_homicide + 
        c.total_felony_murder + 
        c.total_bodily_harm + 
        c.total_theft_cellphone + 
        c.total_armed_robbery_cellphone) AS total_crime
FROM
    pr_crime c
JOIN
    pr_time t ON c.time_id = t.id
WHERE
    t.year = 2010 AND t.month = 11
GROUP BY
    c.segment_id
ORDER BY
    total_crime DESC
LIMIT 10;

-- 7

SELECT
    c.segment_id,
    SUM(c.total_theft_auto + 
        c.total_armed_robbery_auto + 
        c.total_femicide + 
        c.total_homicide + 
        c.total_felony_murder + 
        c.total_bodily_harm + 
        c.total_theft_cellphone + 
        c.total_armed_robbery_cellphone) AS total_crime
FROM
    pr_crime c
JOIN
    pr_time t ON c.time_id = t.id
WHERE
    t.year = 2018 AND UPPER(t.weekday) IN ('SATURDAY', 'SUNDAY')
GROUP BY
    c.segment_id
ORDER BY
    total_crime DESC
LIMIT 10;
