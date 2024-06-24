
  create view "carsharing"."public_staging"."stg_pg__locations__dbt_tmp"
    
    
  as (
    with source as (

    select * from "carsharing"."public"."location"

),

staged as (

    select * from source

)

select * from staged
  );