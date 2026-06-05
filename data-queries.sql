/*Select Data Queries:*/
SELECT
    *
FROM
    customers;

SELECT
    *
FROM
    categories;

SELECT
    *
FROM
    products;

SELECT
    *
FROM
    orders;

SELECT
    *
FROM
    order_details;

SELECT
    *
FROM
    suppliers;

SELECT
    *
FROM
    inventory;

/*Update and Delete Commands:*/
-- Update an Order Status
UPDATE orders
SET
    status = 2
WHERE
    order_id = 1;

-- Delete a Customer
DELETE FROM customers
WHERE
    customer_id = 1;

/*Where, Order By, And, Or Commands:*/
SELECT
    *
FROM
    products
WHERE
    (
        price > 50
        AND price < 100
    )
    OR quantity < 20
ORDER BY
    name;

/*Min, Max, Count, Sum, Avg Commands:*/
SELECT
    MIN(order_amount) as min_order_value,
    MAX(order_amount) as max_order_value,
    COUNT(*) as number_of_orders,
    SUM(order_amount) as total_order_value,
    AVG(order_amount) as avg_order_value
FROM
    orders;

/*Like Command:*/
SELECT
    *
FROM
    customers
WHERE
    name LIKE 'A%';

/*Group By Command:*/
SELECT
    customer_id,
    COUNT(*) as number_of_orders
FROM
    orders
WHERE
    order_amount > 50
GROUP BY
    customer_id;

/*Join Operation:*/
SELECT
    o.order_id,
    c.name,
    od.total_price
FROM
    orders o
    JOIN customers c ON o.customer_id = c.customer_id
    JOIN order_details od ON o.order_id = od.order_id;