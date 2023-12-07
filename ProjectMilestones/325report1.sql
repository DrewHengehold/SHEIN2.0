-- CS 325 - Fall 2023
-- Group Names: Soran Vardanega, Drew Hengehold, Jackie Lyons, Cosette Basto, Forrest Reid

-- Start SQL scripts
start 325design.sql
start 325populate.sql
start 325queries.sql

-- Spool commands
spool 325report1-results.txt

/*
    Report 2: Top Selling Items
    Purpose: Display the gross amount sold from each item, as well as the person it was sold to
*/

-- Title at top of page

ttitle 'Total Gross Value'

-- Column formatting
COLUMN item_name HEADING 'Item Name' FORMAT A8;
COLUMN Name Heading 'Name' Format A20;
COLUMN price HEADING 'Price' FORMAT 99,999;

-- Break command to separate items by name
BREAK ON item_name SKIP 1;

-- Compute the total amount sold
compute sum label 'Total Price' of Price on item_name;

-- Query for the report
SELECT item_name, lname || ', ' || fname "Name", price
FROM catalog_items, line_items, orders, customer_profile
WHERE catalog_items.sku = line_items.sku AND line_items.order_id = orders.order_id 
    AND customer_profile.customer_id = customer_profile.customer_id
ORDER BY price DESC;

--spool off
spool off