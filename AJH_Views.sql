Select * from howe_tags_base;

CREATE VIEW view_name2 AS
SELECT service_date, ward
FROM howe_tags_base
WHERE ward=1;


Create View view_name3 as
Select ordinance_id
Group by ordinance_id;

Create View view_name4 as
SELECT count(ordinance_id), ordinance_id
FROM howe_tags_base
group by ordinance_id;
