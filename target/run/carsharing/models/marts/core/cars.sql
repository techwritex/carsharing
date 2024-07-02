
  
    

  create  table "carsharing"."public_marts"."cars__dbt_tmp"
  
  
    as
  
  (
    with cars as (

    select

        car_id, 
        brand, 
        model, 
        category_text, 
        rate, 
        car_year, 
        vin, 
        licence_plate, 
        mileage

    from "carsharing"."public_intermediate"."int_cars_joined_to_categories"

)

select * from cars
order by car_id
  );
  