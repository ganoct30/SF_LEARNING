-- Therefore return records where this isn't true to make the test fail.
select
    order_id,
    sum(amount) as total_amount
from {{ ref('payment_stg') }}
group by 1
having (total_amount < 0)