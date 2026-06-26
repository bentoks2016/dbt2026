{{ config(
    materialized='table',
    schema='marts',
    database='analytics'
)}}

SELECT
    transaction_date,
    sum(amount) as total_revenue,
    count(distinct customer_id) as unique_customers
from {{ ref('stg_transactions')  }}
group by transaction_date