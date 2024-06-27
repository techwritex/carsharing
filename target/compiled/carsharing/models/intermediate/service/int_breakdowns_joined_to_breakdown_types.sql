with breakdowns as (

    select 

        breakdown_id,
        created_at,
        breakdown_type_id,
        car_id

    from "carsharing"."public_staging"."stg_pg__breakdowns"

),

breakdown_types as (

    select

        breakdown_type_id,
        breakdown_type_text

    from "carsharing"."public_staging"."stg_pg__breakdown_types"

), 

breakdowns_joined_to_breakdown_types as (

    select

        breakdowns.breakdown_id,
        breakdowns.created_at,
        breakdown_types.breakdown_type_text,
        breakdowns.car_id

    from breakdowns

    left join breakdown_types
    on breakdowns.breakdown_type_id = breakdown_types.breakdown_type_id

)

select * from breakdowns_joined_to_breakdown_types