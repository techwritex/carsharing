
  
    

  create  table "carsharing"."public_marts"."customers__dbt_tmp"
  
  
    as
  
  (
    with customers as (

    select

        customer_id, 
        full_name, 
        gender, 
        driving_licence_number, 
        driving_licence_valid_from, 
        phone, 
        email, 
        updated_at

    from "carsharing"."public_intermediate"."int_customers_name_concatenated"

)

select * from customers
order by customer_id
  );
  