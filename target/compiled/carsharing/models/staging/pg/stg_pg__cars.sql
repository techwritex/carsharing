with source as (

    select * from "carsharing"."public"."car"

),

staged as (

    select * from source

)

select * from staged