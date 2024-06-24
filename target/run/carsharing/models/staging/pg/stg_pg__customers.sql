
  create view "carsharing"."public_staging"."stg_pg__customers__dbt_tmp"
    
    
  as (
    with source as (
    
    select * from "carsharing"."public"."customer"

),

staged as (

    select
    
        customer_id,
        first_name,
        last_name,
        gender,
        driving_licence_number,
        driving_licence_valid_from,
        phone,
        email,
        last_update as updated_at   
    
    from source

)

select * from staged
  );