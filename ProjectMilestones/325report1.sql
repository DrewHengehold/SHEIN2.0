--CS 325 - Fall 2023
--Group Names: Soran Vardanega, Drew Hengehold, Jackie Lyons, Cosette basto, Forrest Reid

spool 325report1-results.txt



/*
    Report 1: Customer Orders
    Purpose: To Display the information about customer orders
*/
-- Nice title for the report
Tittle Center 'Customer Orders Report' SKIP 2;

-- Column formatting
COLUMN order_id HEADING 'Order ID' FORMAT A10;
COLUMN customer_name HEADING 'Customer Name' FORMAT A25;
COLUMN order_total HEADING 'Order Total' FORMAT $999,999.99;

-- Query for the report
SELECT o.order_id, cp.fname || ' ' || cp.lname customer_name, o.order_total
FROM orders o
JOIN customer_profile cp ON o.customer_id = cp.customer_id
ORDER BY o.order_id;

-- Break command to separate orders by customer
BREAK ON customer_name SKIP 1;

-- Compute command for total order count
COMPUTE COUNT OF order_id ON customer_name;

-- Reset formatting settings
CLEAR COLUMNS;

/*
    Report 2: Available Catalog Items
    Purpose: Display available catalog items
*/

-- Nice title for the report
TTITLE CENTER 'Available Catalog Items Report' SKIP 2;

-- Column formatting
COLUMN sku HEADING 'SKU' FORMAT A8;
COLUMN item_name HEADING 'Item Name' FORMAT A25;
COLUMN listed_price HEADING 'Listed Price' FORMAT $999,999.99;

-- Query for the report
SELECT sku, item_name, listed_price
FROM catalog_items
WHERE avail_quantity > 0
ORDER BY sku;

-- Break command to separate items by gender
BREAK ON gender SKIP 1;

-- Compute command for total available items count
COMPUTE COUNT OF sku ON gender;

-- Reset formatting settings
clear columns; 

spool off