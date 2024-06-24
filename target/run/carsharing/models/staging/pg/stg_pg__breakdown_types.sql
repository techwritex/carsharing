
  create view "carsharing"."public_staging"."stg_pg__breakdown_types__dbt_tmp"
    
    
  as (
    with source as (

    select * from "carsharing"."public"."breakdown_type"

),

staged as (

    select * from source

)

select * from staged
  );