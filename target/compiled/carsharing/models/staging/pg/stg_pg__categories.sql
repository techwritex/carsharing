with source as (

    select * from "carsharing"."public"."category"

),

staged as (

    select * from source

)

select * from staged