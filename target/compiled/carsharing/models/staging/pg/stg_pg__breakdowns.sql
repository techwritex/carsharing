with source as (

    select * from "carsharing"."public"."breakdown"

),

staged as (

    select
    
        breakdown_id,
        breakdown_date as created_at,
        breakdown_type_id,
        car_id
    
    from source

)

select * from staged