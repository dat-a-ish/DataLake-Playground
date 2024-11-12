CREATE TABLE iceberg_datalake.test_schema.test_table_partitioned (
    order_id BIGINT,
    order_date DATE,
    account_number BIGINT,
    customer VARCHAR,
    country VARCHAR)
WITH (partitioning = ARRAY['month(order_date)', 'bucket(account_number, 10)', 'country']);


INSERT INTO iceberg_datalake.test_schema.test_table_partitioned (order_id, order_date, account_number, customer, country) VALUES
    (1, DATE '2023-01-15', 1001, 'Alice', 'USA'),
    (2, DATE '2023-02-20', 1002, 'Bob', 'Canada'),
    (3, DATE '2023-01-25', 1003, 'Carol', 'USA'),
    (4, DATE '2023-03-10', 1004, 'David', 'Mexico'),
    (5, DATE '2023-02-18', 1005, 'Eve', 'Canada');


SELECT * FROM iceberg_datalake.test_schema.test_table_partitioned
WHERE month(order_date) = 1 AND country = 'USA';

