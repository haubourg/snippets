/*
Usage psql avec variable


psql -v username=therealusername -f create_role_bdnb.sql
 
 */


CREATE ROLE :username LOGIN;

create schema z_tmp_:username;

grant all on SCHEMA z_tmp_:username to :username ;

grant gorenove_df_r to :username ;

ALTER DEFAULT PRIVILEGES IN SCHEMA z_tmp_:username GRANT SELECT ON TABLES TO gorenove_core_team;

alter ROLE :username set search_path to z_tmp_:username,public;

SELECT 'MAINTENANT SETTER LE MOT DE PASSE AVEC \password :username';
