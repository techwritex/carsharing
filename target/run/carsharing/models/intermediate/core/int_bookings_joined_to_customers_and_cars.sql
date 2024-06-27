
  create view "carsharing"."public_intermediate"."int_bookings_joined_to_customers_and_cars__dbt_tmp"
    
    
  as (
    with bookings as (

    select 

        booking_id,
        created_at,
        customer_id,
        car_id

    from "carsharing"."public_staging"."stg_pg__bookings"

),

customers as (

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

),

cars as (

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

),

bookings_joined_to_customers_and_cars as (

    select

        bookings.booking_id,
        bookings.created_at,
        customers.customer_id, 
        customers.full_name, 
        customers.gender,
        cars.car_id,
        cars.brand, 
        cars.model, 
        cars.category_text, 
        cars.rate

    from bookings

    left join customers
    on bookings.customer_id = customers.customer_id

    left join cars
    on bookings.car_id = cars.car_id

)

select * from bookings_joined_to_customers_and_cars
  );