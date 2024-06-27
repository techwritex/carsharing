with customers as (

    select

        customer_id, 
        concat(first_name,' ',last_name) as full_name, 
        gender, 
        driving_licence_number, 
        driving_licence_valid_from, 
        phone, 
        email, 
        updated_at

    from "carsharing"."public_staging"."stg_pg__customers"

)

select * from customers