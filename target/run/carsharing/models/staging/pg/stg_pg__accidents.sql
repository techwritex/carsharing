
  create view "carsharing"."public_staging"."stg_pg__accidents__dbt_tmp"
    
    
  as (
    with source as (

    select * from "carsharing"."public"."accident"

),

staged as (

    select 
    
        accident_id,
        accident_text,
        accident_date as created_at,
        car_id,
        ride_id

    from source

)

select * from staged
  );