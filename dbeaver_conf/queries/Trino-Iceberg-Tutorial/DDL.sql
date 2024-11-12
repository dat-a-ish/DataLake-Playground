
CREATE Schema iceberg_datalake.test_schema;


CREATE TABLE iceberg_datalake.test_schema.test_table (
    id INT,
    name VARCHAR,
    timestamp TIMESTAMP
)
WITH (
    format = 'PARQUET'
);









