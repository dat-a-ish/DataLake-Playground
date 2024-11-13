select *
from {{ source('postgres', 'test_table_from_iceberg') }}