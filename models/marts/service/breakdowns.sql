with breakdowns as (

    select

        breakdown_id, 
        created_at, 
        breakdown_type_text, 
        car_id,
        brand, 
        model, 
        category_text 

    from {{ ref('int_breakdowns_joined_to_cars') }}

)

select * from breakdowns
order by breakdown_id