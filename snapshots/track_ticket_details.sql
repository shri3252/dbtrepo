{% snapshot track_ticket_details1 %}
    {{
        config(
            target_schema='marketing_schema',
            target_database='marketing_DB',
            unique_key='TICKET_ID',
            strategy='check',
            check_cols=['TICKET_STATUS'],
            invalidate_hard_deletes=False
            
        )
    }}

    select * from {{ ref("ticket_details")}}
 {% endsnapshot %}