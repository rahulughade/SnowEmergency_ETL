use snow_emergency_db;

create view tagcount_per_neighborhood as
(select neighborhood, count(*) as tags_count
from all_tags
group by neighborhood
order by citation);

select * from tagcount_per_neighborhood;

create view towcount_by_emerg_day as
(select snow_emergency_name, day_id, count(*) as tow_count 
from all_tows
group by snow_emergency_name, day_id
order by tow_count desc); 

select * from towcount_by_emerg_day;