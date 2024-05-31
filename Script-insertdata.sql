INSERT INTO customers (name, address, phone) VALUES 
('Sum Ting Wong', 'Digital Park, Sambau, Kecamatan Nongsa, Kota Batam, Kepulauan Riau 29466', '6281312341234');

INSERT INTO products (name, price, weight_kg) VALUES 
('SAPPHIRE NITRO+ Radeon RX 7900 XTX 24GB', 20500000, 5.00);

INSERT INTO promotions (promo_code, description, discount) VALUES 
('DDDT845', 'Promo Cashback DDDT845', 986385);

INSERT INTO orders (customer_id, order_date, total_price, shipping_cost, insurance_cost, service_fee, app_fee, promo_code, promo_discount, payment_method, shipping_method) VALUES 
(1, '2024-05-22', 20683000, 126000, 57700, 1000, 1000, 'DDDT845', 986385, 'BCA Virtual Account', 'J&T - Reguler');

INSERT INTO order_items (order_id, product_id, quantity, price) VALUES 
(1, 1, 1, 20500000);

INSERT INTO payments (order_id, payment_date, amount_paid, method) VALUES 
(1, '2024-05-22', 20683000, 'BCA Virtual Account');