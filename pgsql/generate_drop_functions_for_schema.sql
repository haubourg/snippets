-- function to generate batch function drop. To use with \gexec
select 'drop ' ||  routine_schema || '.' || routine_type || ' ;'
from information_schema.routines
where  
  routine_schema in ('goreprod_stage_v058')  

order by routine_schema , routine_name;
