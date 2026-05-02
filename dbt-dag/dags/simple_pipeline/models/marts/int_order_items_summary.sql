SELECT
    order_key,
    SUM(extended_price) as total_extended_price,
    SUM(discount_amount) as total_discount_amount
FROM
    {{ ref('int_order_items') }}
GROUP BY
    order_key