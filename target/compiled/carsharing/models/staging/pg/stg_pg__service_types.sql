with source as (

    select * from "carsharing"."public"."service_type"

),

staged as (

    select * from source

)

select * from staged