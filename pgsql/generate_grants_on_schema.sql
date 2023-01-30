select 'GRANT SELECT ON  '||schemaname||'.'||tablename||' TO gorenove_df_r;'
from pg_tables where   ( schemaname in ('dgfmpm2022')  )
and tablename not like '%partition%' order by schemaname, tablename;

