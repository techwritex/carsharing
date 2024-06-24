with source as (
    
    select * from "carsharing"."public"."ride"

),

staged as (

    select * from source

)

select * from staged