USE ecommerce;

-- 1. Check that Product C price was updated and discount column exists
SELECT * FROM products;

-- 2. Check the new normalized order_items table
SELECT * FROM order_items;

-- 3. See the final summary of orders with customer names
SELECT o.id AS OrderID, c.name AS CustomerName, o.total_amount, o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.id;