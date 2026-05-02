SELECT
    orders.*,
    order_item_summary.total_extended_price,
    order_item_summary.total_discount_amount
FROM
    {{ ref('stg_tpch_orders') }} as orders
JOIN
    {{ ref('int_order_items_summary') }} as order_item_summary
        ON orders.order_key = order_item_summary.order_key
order by order_date