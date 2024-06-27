with payments as (

    select 

        payment_id, 
        created_at, 
        booking_id, 
        amount

    from {{ ref('stg_pg__payments') }}

),

bookings as (

    select

        booking_id, 
        created_at, 
        customer_id,
        full_name, 
        gender,
        car_id, 
        brand, 
        model, 
        category_text, 
        rate

    from {{ ref('int_bookings_joined_to_customers_and_cars') }}

),

payments_joined_to_bookings as(

    select 

        payments.payment_id, 
        payments.created_at, 
        bookings.booking_id, 
        bookings.customer_id,
        bookings.full_name, 
        bookings.gender, 
        bookings.car_id, 
        bookings.brand, 
        bookings.model, 
        bookings.category_text,
        payments.amount

    from payments

    left join bookings
    on payments.booking_id = bookings.booking_id

)

select * from payments_joined_to_bookings