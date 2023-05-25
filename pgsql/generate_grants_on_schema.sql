# generation des instructions de lecture seule - à appliquer en masse avec \gexec dans psql

GRANT SELECT  ON  ALL TABLES IN SCHEMA [schema_name] TO role_specification ;
GRANT USAGE ON  ALL SEQUENCES IN SCHEMA [schema_name] TO role_specification ;
GRANT  EXECUTE ON  ALL ROUTINES  IN SCHEMA [schema_name] TO role_specification ;


GRANT SELECT ON  '||schemaname||'.'||tablename||' TO gorenove_df_r;'
from pg_tables where   ( schemaname in ('[shemaName]')  )
and tablename not like '%partition%' order by schemaname, tablename;



