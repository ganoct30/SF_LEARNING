with payments as (

    select
        id as payment_id,
        orderid as order_id,
        amount
    from DBT.stripe.payment

)

SELECT * FROM payments