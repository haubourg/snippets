select 'drop table '||schemaname||'.'||tablename||' ;'
from pg_tables where   ( schemaname in ('goreprod_stage_v062')  )
and tablename not like '%partition%' order by schemaname, tablename;
