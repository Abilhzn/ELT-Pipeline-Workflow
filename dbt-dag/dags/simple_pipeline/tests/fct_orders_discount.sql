SELECT
    *
FROM
    {{ ref('fct_orders') }}
WHERE
    total_discount_amount > 0