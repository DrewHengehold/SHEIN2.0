--CS 325 - Fall 2023
--Group Names: Soran Vardanega, Drew Hengehold, Jackie Lyons, Cosette basto, Forrest Reid

start 325design.sql
start 325populate.sql
start 325queries.sql

spool 325report1-results.txt

-- Create a report based on Query 1
column customer_id heading "Customer Id" format 99999
column user_name heading "User Name" format a15
column "Name" heading "Full Name" format a30

-- Query for the report
SELECT customer_id, user_name, lname || ', ' || fname AS "Name"
FROM customer_profile;

spool off