with source as (

    select * from "carsharing"."public"."location"

),

staged as (

    select * from source

)

select * from staged