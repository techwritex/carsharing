with breakdowns as (

    select 

        breakdown_id, 
        created_at, 
        breakdown_type_text, 
        car_id

    from {{ ref('int_breakdowns_joined_to_breakdown_types') }}

),

cars as (

    select

        car_id, 
        brand, 
        model, 
        category_text 

    from {{ ref('int_cars_joined_to_categories') }}

), 

breakdowns_joined_to_cars as (

    select

        breakdowns.breakdown_id, 
        breakdowns.created_at, 
        breakdowns.breakdown_type_text, 
        breakdowns.car_id,
        cars.brand, 
        cars.model, 
        cars.category_text 

    from breakdowns

    left join cars
    on breakdowns.car_id = cars.car_id

)

select * from breakdowns_joined_to_cars