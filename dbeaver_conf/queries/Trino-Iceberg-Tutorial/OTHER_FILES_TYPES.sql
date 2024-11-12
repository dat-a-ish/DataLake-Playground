CREATE TABLE iceberg_datalake.test_schema.test_table_avro (
    id INT,
    name VARCHAR,
    timestamp TIMESTAMP
)
WITH (
    format = 'AVRO'
);


INSERT INTO iceberg_datalake.test_schema.test_table_avro (id, name, timestamp)
VALUES
    (1, 'Alice', TIMESTAMP '2024-11-10 12:00:00'),
    (2, 'Bob', TIMESTAMP '2024-11-10 13:00:00');


CREATE TABLE iceberg_datalake.test_schema.test_table_orc (
    id INT,
    name VARCHAR,
    timestamp TIMESTAMP
)
WITH (
    format = 'ORC'
);


INSERT INTO iceberg_datalake.test_schema.test_table_orc (id, name, timestamp)
VALUES
    (1, 'Alice', TIMESTAMP '2024-11-10 12:00:00'),
    (2, 'Bob', TIMESTAMP '2024-11-10 13:00:00');

