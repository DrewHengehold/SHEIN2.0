-- CS 325 - Fall 2023
-- Group Names: Soran Vardanega, Drew Hengehold, Jackie Lyons, Cosette Basto, Forrest Reid

-- Start SQL scripts
start 325design.sql
start 325populate.sql
start 325queries.sql

-- Spool commands
spool 325report2-results.txt

/*
    Report 2: Top Selling Items
    Purpose: Display the top-selling catalog items based on the quantity sold
*/

-- Column formatting
COLUMN item_name HEADING 'Item Name' FORMAT A30;
COLUMN quantity_sold HEADING 'Quantity Sold' FORMAT 999,999;

-- Query for the report
SELECT ci.item_name, SUM(li.quantity) quantity_sold
FROM catalog_items ci
JOIN line_items li ON ci.sku = li.sku
GROUP BY ci.item_name
ORDER BY quantity_sold DESC;

-- Break command to separate items by name
BREAK ON item_name SKIP 1;

-- Compute command for total quantity sold
COMPUTE SUM OF quantity_sold;

-- Reset formatting settings
CLEAR COLUMNS;

-- Spool off
spool off