-- public.customers definition

-- Drop table

-- DROP TABLE public.customers;

CREATE TABLE public.customers (
	customer_id serial4 NOT NULL,
	"name" varchar(255) NOT NULL,
	address varchar(255) NOT NULL,
	phone varchar(20) NOT NULL,
	CONSTRAINT customers_pkey PRIMARY KEY (customer_id)
);


-- public.products definition

-- Drop table

-- DROP TABLE public.products;

CREATE TABLE public.products (
	product_id serial4 NOT NULL,
	"name" varchar(255) NOT NULL,
	price numeric(10, 2) NOT NULL,
	weight_kg numeric(5, 2) NOT NULL,
	CONSTRAINT products_pkey PRIMARY KEY (product_id)
);


-- public.promotions definition

-- Drop table

-- DROP TABLE public.promotions;

CREATE TABLE public.promotions (
	promo_code varchar(50) NOT NULL,
	description varchar(255) NULL,
	discount numeric(10, 2) NOT NULL,
	CONSTRAINT promotions_pkey PRIMARY KEY (promo_code)
);


-- public.orders definition

-- Drop table

-- DROP TABLE public.orders;

CREATE TABLE public.orders (
	order_id serial4 NOT NULL,
	customer_id int4 NOT NULL,
	order_date date NOT NULL,
	total_price numeric(10, 2) NOT NULL,
	shipping_cost numeric(10, 2) NULL,
	insurance_cost numeric(10, 2) NULL,
	service_fee numeric(10, 2) NULL,
	app_fee numeric(10, 2) NULL,
	promo_code varchar(50) NULL,
	promo_discount numeric(10, 2) NULL,
	payment_method varchar(50) NOT NULL,
	shipping_method varchar(50) NOT NULL,
	CONSTRAINT orders_pkey PRIMARY KEY (order_id),
	CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id)
);


-- public.payments definition

-- Drop table

-- DROP TABLE public.payments;

CREATE TABLE public.payments (
	payment_id serial4 NOT NULL,
	order_id int4 NOT NULL,
	payment_date date NOT NULL,
	amount_paid numeric(10, 2) NOT NULL,
	"method" varchar(50) NOT NULL,
	CONSTRAINT payments_pkey PRIMARY KEY (payment_id),
	CONSTRAINT payments_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id)
);


-- public.order_items definition

-- Drop table

-- DROP TABLE public.order_items;

CREATE TABLE public.order_items (
	order_item_id serial4 NOT NULL,
	order_id int4 NOT NULL,
	product_id int4 NOT NULL,
	quantity int4 NOT NULL,
	price numeric(10, 2) NOT NULL,
	CONSTRAINT order_items_pkey PRIMARY KEY (order_item_id),
	CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id),
	CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id)
);