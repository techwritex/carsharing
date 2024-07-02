with payments as (

    select

        payment_id, 
        created_at, 
        customer_id,
        full_name, 
        gender, 
        car_id,
        brand, 
        model, 
        category_text, 
        amount

    from {{ ref('int_payments_joined_to_bookings') }}

)

select * from payments
order by payment_id