
  create view "carsharing"."public_staging"."stg_pg__categories__dbt_tmp"
    
    
  as (
    with source as (

    select * from "carsharing"."public"."category"

),

staged as (

    select * from source

)

select * from staged
  );