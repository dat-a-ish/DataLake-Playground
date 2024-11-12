select * 
from iceberg_datalake.test_schema.test_table;


select * 
from iceberg_datalake.test_schema.test_table
FOR TIMESTAMP AS OF TIMESTAMP '2024-11-12 20:31:20';
