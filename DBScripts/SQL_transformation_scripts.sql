#Insert data in all_tags table
insert into all_tags (citation, service_date, address, latitude, longitude, ordinance_id, ordinance_desc, neighborhood, 
community, ward, snow_emergency_name, day_id, tow_district)
select citation, service_date, address, latitude, longitude, ordinance_id, ordinance_desc, neighborhood, 
community, ward, snow_emergency_name, day_id, tow_district
 from 
(select * from yardville_tags_base
union
select * from howe_tags_base
union
select * from xerxes_tags_base) tags;


#Insert data in all_tows table
insert into all_tows (snow_emergency_name, service_date, address, latitude, longitude, day_id, ward, neighborhood, community, tow_district)
select snow_emergency_name, service_date, address, latitude, longitude, day_id, ward, neighborhood, community, tow_district
from (select * from yardville_tows_base
union
select * from howe_tows_base
union
select * from xerxes_tows_base
) tows;