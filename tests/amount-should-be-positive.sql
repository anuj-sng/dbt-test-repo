select
    order_id
from {{ ref('orders' )}}
 where order_amt<0;