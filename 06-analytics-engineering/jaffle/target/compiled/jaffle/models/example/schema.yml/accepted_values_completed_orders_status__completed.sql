
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from "postgres"."public"."completed_orders"
    group by status

)

select *
from all_values
where value_field not in (
    'completed'
)


