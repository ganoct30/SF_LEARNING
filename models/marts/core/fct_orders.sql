with customers as (

    select * from {{ ref('customer_stg') }}

),

orders as (

    select * from {{ ref('order_stg') }}

),

payment as (
    select * from {{ ref('payment_stg') }}

),


fct_orders as (
    select ord.order_id, ord.customer_id, pay.amount
    from orders ord inner join payment pay
    on ord.order_id = pay.order_id
)

select * from fct_orders