SELECT 
    o.order_id,
    c.name AS customer_name,
    c.address,
    c.phone,
    o.order_date,
    p.name AS product_name,
    p.price AS product_price,
    p.weight_kg,
    oi.quantity,
    o.shipping_cost,
    o.insurance_cost,
    o.service_fee,
    o.app_fee,
    o.total_price,
    pr.promo_code,
    pr.discount AS promo_discount,
    o.payment_method,
    o.shipping_method
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
LEFT JOIN promotions pr ON o.promo_code = pr.promo_code
WHERE o.order_id = 1;
