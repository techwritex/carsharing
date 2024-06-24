
  create view "carsharing"."public_staging"."stg_pg__bookings__dbt_tmp"
    
    
  as (
    with source as (
    
    select * from "carsharing"."public"."booking"

),

staged as (

    select
    
        booking_id,
        booking_date as created_at,
        customer_id,
        car_id
    
    from source

)

select * from staged
  );