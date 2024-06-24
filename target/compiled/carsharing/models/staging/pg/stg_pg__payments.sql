with source as (
    
    select * from "carsharing"."public"."payment"

),

staged as (

    select
    
        payment_id,
        payment_date as created_at,
        booking_id,
        amount
    
    from source

)

select * from staged