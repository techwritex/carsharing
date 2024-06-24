
  create view "carsharing"."public_staging"."stg_pg__cars__dbt_tmp"
    
    
  as (
    with source as (

    select * from "carsharing"."public"."car"

),

staged as (

    select * from source

)

select * from staged
  );