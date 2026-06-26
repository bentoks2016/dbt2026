SELECT 
    transaction_id,
    customer_id,
    amount,
    transaction_date
from {{source('raw_sales', 'transactions')}}
where amount is not NULL