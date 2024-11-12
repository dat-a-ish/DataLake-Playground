create schema postgres.test_schema;

create table postgres.test_schema.test_table_from_iceberg as
select * from iceberg_datalake.test_schema.test_table;

select 'postgres', * from postgres.test_schema.test_table_from_iceberg
union all
select 'trino', * from iceberg_datalake.test_schema.test_table
  ;