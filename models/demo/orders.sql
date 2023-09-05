/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/
{{ config(
    materialized="table"
            ) }}

with
    source_data as (

        select 1 as order_id, 'Order 1' as order_name , 10 as order_quantity, 225.00 order_amt
        union all
        select 2 as order_id, 'Order 2' as order_name , 25 as order_quantity, 400.00 order_amt
        union all
        select 3 as order_id, 'Order 3' as order_name , 22 as order_quantity, 330.00 order_amt
        union all
        select 4 as order_id, 'Order 4' as order_name , 14 as order_quantity, 290.00 order_amt
        --union all
        --select 4 as order_id, 'Order 4' as order_name , 14 as order_quantity, 290.00 order_amt

    )

select *
from
    source_data

    /*
    Uncomment the line below to remove records with null `id` values
*/
    -- where id is not null
    
