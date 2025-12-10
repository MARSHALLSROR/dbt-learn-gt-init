{{ config(severity = 'error') }}

select *
from {{ ref('stg_stripe__payments') }}
where amount < 0  -- Change 'total' to whatever column exists
