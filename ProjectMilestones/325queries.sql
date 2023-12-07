/*
Shien 2.0
Drew Hengehold, Cosette Basto, Jacqueline Lyons, Shyna Kumar, Forrest Reid, Soran Vardanega
CS 325 - Fall 2023
December 5, 2023
*/

spool 325query-results.txt

prompt === Query 1 ===
prompt Display customer id, username, and full name 

select customer_id "Customer Id", user_name "User Name", lname || ', ' || fname "Name"
from customer_profile;

prompt === Query 2 ===
prompt Display bottoms cost and description that are made of cotton

select item_name, listed_price
from bottoms, catalog_items
where bottoms.SKU = catalog_items.SKU AND material = 'Cotton';

prompt === Query 3 ===
prompt Display customer id and date ordered of items shiped

select customer_id, date_ordered
from orders
where order_states = 'SHIPPED';


prompt === Query 4 ===
prompt Display tops that cost less than the average price of all tops

select item_name
from catalog_items, tops
where catalog_items.SKU = tops.SKU AND listed_price <
    (select avg(listed_price)
     from catalog_items
    );

prompt === Query 5 ===
prompt Displays shoe types grouped by shoe sizes

select avg(shoe_size), shoe_type
from shoes
group by shoe_type;

prompt === Query 6 ===
prompt Displays all details of each top

select *
from catalog_items, tops
where catalog_items.SKU = tops.SKU;

prompt === Query 7 ===
prompt Display customers last name, zip and state 

select lname, zip, us_state
from addy, customer_Profile
where addy.customer_id = customer_profile.customer_id;

prompt === Query 8 ===
prompt Displays email and last names of customers with exp date greater than jan 2024

select lname, billing_email
from customer_profile, payment_info
where customer_profile.customer_id = payment_info.customer_id AND exp_date > '01/24';

spool off