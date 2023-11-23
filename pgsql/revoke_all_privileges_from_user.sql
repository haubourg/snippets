SELECT 
'revoke ' || privilege_type || ' on '|| table_schema || '.' || quote_ident(table_name) || ' from ' || grantee || ' ;'
  FROM information_schema.role_table_grants 
 WHERE grantee = 'bamistadi';
