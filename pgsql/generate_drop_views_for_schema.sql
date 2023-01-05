select 'drop view '||schemaname||'.'||viewname||' ;'
from pg_views where   ( schemaname = 'goreprod_stage_v062'  )
order  by schemaname, viewname;
