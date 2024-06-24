with source as (

    select * from "carsharing"."public"."service"

),

staged as (

    select
    
        service_id,
        service_date as created_at,
        service_type_id,
        car_id    
    
    from source

)

select * from staged