
  create view "carsharing"."public_staging"."stg_pg__rides__dbt_tmp"
    
    
  as (
    with source as (
    
    select * from "carsharing"."public"."ride"

),

staged as (

    select * from source

)

select * from staged
  );