
  create view "carsharing"."public_staging"."stg_pg__service_types__dbt_tmp"
    
    
  as (
    with source as (

    select * from "carsharing"."public"."service_type"

),

staged as (

    select * from source

)

select * from staged
  );