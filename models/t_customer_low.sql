{{
    config(
        materialized='table'
    )
}}

select * from marketing_db.marketing_schema.t_orders where o_orderpriority ILIKE'%low%'