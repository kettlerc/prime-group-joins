-- TASKS
-- 1. Get all customers and their addresses.
SELECT * FROM "customers", "addresses";

-- 2. Get all orders and their line items (orders, quantity and product).
SELECT
	"line_items"."order_id" as "order",
	"line_items"."quantity" as "quantity",
	"products"."description" as "product"
FROM "line_items"
JOIN "orders" ON "orders"."id" = "line_items"."order_id"
JOIN "products" ON "products"."id" = "line_items"."product_id";

-- 3. Which warehouses have cheetos?
SELECT * FROM "warehouse_product"
JOIN "warehouse" ON "warehouse_product"."warehouse_id" = "warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
WHERE "products"."id" = 5;

-- 4. Which warehouses have diet pepsi?
SELECT * FROM "warehouse_product"
JOIN "warehouse" ON "warehouse_product"."warehouse_id" = "warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
WHERE "products"."id" = 6;

-- 5. Get the number of orders for each customer. 
-- NOTE: It is OK if those without orders are not included in results.

-- 6. How many customers do we have?

-- 7. How many products do we carry?

-- 8. What is the total available on-hand quantity of diet pepsi?


--STRETCH
-- 9. How much was the total cost for each order?

-- 10. How much has each customer spent in total?

-- 11. How much has each customer spent in total? 
-- Customers who have spent $0 should still show up in the table. 
-- It should say 0, not NULL (research coalesce).