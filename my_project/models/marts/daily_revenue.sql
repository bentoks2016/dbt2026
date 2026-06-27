{{ config(
    materialized='table',
    schema='MARTS'
) }}

SELECT
    transaction_date,
    sum(amount) as total_revenue,
    count(distinct customer_id) as "unique customers"
from {{ ref('stg_transactions') }}
group by transaction_date