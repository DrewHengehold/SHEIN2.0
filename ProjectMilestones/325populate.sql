/*

    Drew Hengehold, Cosette Basto, Jacqueline Lyons, Shyna Kumar, Forrest Reid, Soran Vardanega
    CS 325 - Fall 2023
    LAST MODIFIED DATE: 30-Nov-2023

    ---------------------------
    PROJECT DESIGN MILESTONE #3
    ---------------------------

*/


/*
    new_user - Drew
*/
insert into new_user
values('forrest_reid', 'ForestIsTheBest', 'ADMIN');

insert into new_user
values('drew_hengehold', 'DrewIsTheBest', 'ADMIN');

insert into new_user
values('cosette_basto', 'CossetteIsTheBest', 'ADMIN');

insert into new_user
values('shyna_kumar', 'ShynaIsTheBest', 'ADMIN');

insert into new_user
values('jacky_lyons', 'JackyIsTheBest', 'ADMIN');

insert into new_user
values('soran_vardanega', 'SoranIsTheBest', 'ADMIN');

insert into new_user
values('john_doe', 'ZionNational', 'CUSTOMER');

insert into new_user
values('jane_smith', 'ILoveCats', 'CUSTOMER');

insert into new_user
values('bob_jones', 'ILoveDogs', 'CUSTOMER');

insert into new_user
values('micheal_brown', 'BrownBerkely', 'CUSTOMER');

insert into new_user
values('william_black', 'BlackChicago', 'CUSTOMER');

insert into new_user
values('lisa_jackson', 'JacksonNYC', 'CUSTOMER');

insert into new_user
values('ryan_taylor', 'Taylor13#', 'CUSTOMER');

insert into new_user
values('susan_white', 'WhiteTheColor', 'CUSTOMER');

insert into new_user
values('emily_green', 'GreenTheApple', 'CUSTOMER');

/* 
    forrest - Insert into customer profiles

    Customer_Profile(CUSTOMER_ID, user_name, fname, lname, phone, email)
    foreign key (user_name) refrences User
*/
INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00001', 'john_doe', 'John', 'Doe', '1234567890', 'john.doe@email.com');

INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00002', 'jane_smith', 'Jane', 'Smith', '9876543210', 'jane.smith@email.com');

INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00003', 'bob_jones', 'Bob', 'Jones', '5556667777', 'bob.jones@email.com');

INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00004', 'susan_white', 'Susan', 'White', '1112223333', 'susan.white@email.com');

INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00005', 'michael_brown', 'Michael', 'Brown', '9998887777', 'michael.brown@email.com');

INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00006', 'emily_green', 'Emily', 'Green', '4445556666', 'emily.green@email.com');

INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00007', 'william_black', 'William', 'Black', '7778889999', 'william.black@email.com');

INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00008', 'lisa_jackson', 'Lisa', 'Jackson', '3332221111', 'lisa.jackson@email.com');

INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00009', 'ryan_taylor', 'Ryan', 'Taylor', '5554443333', 'ryan.taylor@email.com');

INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00010', 'soran_vardanega', 'Soran', 'Vardanega', '6667778888', 'soran.vardanega@email.com');

INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00011', 'shyna_kumar', 'Shyna', 'Kumar', '9990001111', 'shyna.kumar@email.com');

INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00012', 'jacky_lyons', 'Jacky', 'Lyons', '1110002222', 'jacky.lyons@email.com');

INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00013', 'drew_hengehold', 'Drew', 'Hengehold', '8887776666', 'drew.hengehold@email.com');

INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00014', 'cosette_basto', 'Cosette', 'Basto', '2223334444', 'cosette.basto@email.com');

INSERT INTO customer_profile (CUSTOMER_ID, new_user_name, fname, lname, phone, email)
VALUES ('C00015', 'forrest_reid', 'Forrest', 'Reid', '4443332222', 'forrest.reid@email.com');


/*
 Jacky creation - Payment info Insert statements 

 payment_info(CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
    foreign key (customer_id) refrences Customer_Profile(CUSTOMER_ID)
*/
INSERT INTO payment_info (CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
VALUES ('1234567890123456', 'CUST01', 'John Doe', '12/25', 'john@example.com');

INSERT INTO payment_info (CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
VALUES ('9876543210987654', 'CUST02', 'Jane Smith', '09/24', 'jane@example.com');

INSERT INTO payment_info (CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
VALUES ('5678901234567890', 'CUST03', 'Alice Johnson', '03/23', 'alice@example.com');

INSERT INTO payment_info (CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
VALUES ('1122334455667788', 'CUST04', 'Michael Brown', '07/23', 'michael@example.com');

INSERT INTO payment_info (CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
VALUES ('9988776655443322', 'CUST05', 'Sarah Johnson', '10/25', 'sarah@example.com');

INSERT INTO payment_info (CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
VALUES ('1212121212121212', 'CUST06', 'Emily Davis', '05/24', 'emily@example.com');

INSERT INTO payment_info (CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
VALUES ('4545454545454545', 'CUST07', 'David Wilson', '11/23', 'david@example.com');

INSERT INTO payment_info (CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
VALUES ('7878787878787878', 'CUST08', 'Sophia Garcia', '08/24', 'sophia@example.com');

INSERT INTO payment_info (CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
VALUES ('3232323232323232', 'CUST09', 'Matthew Martinez', '02/23', 'matthew@example.com');

INSERT INTO payment_info (CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
VALUES ('6666666666666666', 'CUST10', 'Olivia Lopez', '06/25', 'olivia@example.com');

INSERT INTO payment_info (CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
VALUES ('9999999999999999', 'CUST11', 'Ethan Adams', '09/23', 'ethan@example.com');

INSERT INTO payment_info (CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
VALUES ('8888888888888888', 'CUST12', 'Ava Hernandez', '12/24', 'ava@example.com');

INSERT INTO payment_info (CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
VALUES ('1010101010101010', 'CUST13', 'Noah Taylor', '04/23', 'noah@example.com');

INSERT INTO payment_info (CARD_NUM, customer_id, name_on_card, exp_date, billing_email)
VALUES ('7777777777777777', 'CUST14', 'Isabella Nguyen', '01/25', 'isabella@example.com');

/*
 Forrest - addy

addy(ADDRESS_ID, customer_id, street, city, state, zip)
    foreign key (customer_id) refrences Customer_Profile(CUSTOMER_ID)

*/
INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00001', 'C00001', '123 Main St', 'Anytown', 'CA', '12345');

INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00002', 'C00002', '456 Oak Ave', 'Somewhereville', 'NY', '54321');

INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00003', 'C00003', '789 Elm Blvd', 'Nowhere City', 'TX', '67890');

INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00004', 'C00004', '101 Pine Ln', 'Smalltown', 'FL', '13579');

INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00005', 'C00005', '202 Maple Dr', 'Big City', 'IL', '24680');

INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00006', 'C00006', '303 Birch St', 'Anywhere', 'AZ', '98765');

INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00007', 'C00007', '404 Cedar Ave', 'Everytown', 'WA', '11223');

INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00008', 'C00008', '505 Redwood Rd', 'Middleofnowhere', 'GA', '33445');

INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00009', 'C00009', '606 Spruce Blvd', 'Hometown', 'MI', '55667');

INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00010', 'C00010', '707 Cedar Ln', 'Downtown', 'OR', '77889');

INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00011', 'C00011', '808 Pine Dr', 'Uptown', 'NC', '99001');

INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00012', 'C00012', '909 Elm St', 'Suburbia', 'SC', '11234');

INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00013', 'C00013', '121 Oak Blvd', 'Countryside', 'PA', '22345');

INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00014', 'C00014', '232 Pine Dr', 'Metropolis', 'NJ', '33456');

INSERT INTO addy (ADDRESS_ID, customer_id, street, city, us_state, zip) 
VALUES ('A00015', 'C00015', '343 Maple Ln', 'Village', 'UT', '44567');

/*
Billing

 billing(ADDRESS_ID, CARD_NUM)
    foreign key (ADDRESS_ID) refrences Address
    foreign key (CARD_NUM) refrences Payment_info
*/


INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00001', '1234567890123456');

INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00002', '9876543210987654');

INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00003', '5678901234567890');

INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00004', '1122334455667788');

INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00005', '9988776655443322');

INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00006', '1212121212121212');

INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00007', '4545454545454545');

INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00008', '7878787878787878');

INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00009', '3232323232323232');

INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00010', '6666666666666666');

INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00011', '9999999999999999');

INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00012', '8888888888888888');

INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00013', '1010101010101010');

INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00014', '7777777777777777');

INSERT INTO billing (ADDRESS_ID, CARD_NUM) 
VALUES ('A00015', '5555555555555555');


/*
 Cosette - Shipping info Insert statements 

 shipping(ADDRESS_ID, ship_instructions)
    foreign key (ADDRESS_ID) refrences Address
*/

insert into shipping
values
( '111111', 'N/A');

insert into shipping 
values 
('222222', 'Leave at door'); 

insert into shipping 
values 
('333333', 'Leave at gate'); 

insert into shipping 
values 
('444444', 'N/A');

insert into shipping 
values 
('555555', 'Leave by mailbox'); 

insert into shipping 
values 
('666666', 'Leave at door');

insert into shipping 
values 
('777777', 'Leave on stair'); 

insert into shipping 
values 
('888888', 'N/A');

insert into shipping 
values 
('999999', 'N/A');

insert into shipping 
values 
('121212', 'Leave by fence');    

insert into shipping 
values 
('131313', 'Leave on stair');

insert into shipping 
values 
('141414', 'Leave at door');

insert into shipping 
values 
('151515', 'N/A');

insert into shipping 
values 
('161616', 'Leave on stair');    

insert into shipping 
values 
('171717', 'Leave by fence');
 

 /*
Order - Soran

Order(ORDER_ID, customer_id, order_total, order_states, date_ordered)
    foreign key (customer_id) refrences Customer_Profile
*/

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('a123456', 'C00001',  35, 'PENDING', '01-Jan-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('b123456', 'C00002',  40, 'SHIPPED', '03-Mar-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('c123456', 'C00003',  23, 'INVOICED', '08-Aug-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('d123456', 'C00004', 20,'RETURNED', '10-OCT-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('e123456', 'C00005',  32, 'INVOICED', '01-Jan-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('f123456', 'C00006',  48, 'RETURNED', '04-Apr-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('g123456', 'C00007', 50, 'SHIPPED', '12-Dec-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('h123456', 'C00008' 37, 'PENDING', '01-Jan-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('i123456', 'C00009', 24, 'INVOICED', '09-Sep-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('j123456', 'C00010',  43, 'PENDING', '01-Jan-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('k123456', 'C00011',27,'SHIPPED', '07-Jul-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('l123456', 'C00012' 55, 'INVOICED', '02-Feb-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('m123456', 'C00013', 58, 'PENDING', '06-Jun-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('n123456', 'C00014', 22, 'SHIPPED', '11-Nov-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('o123456','C00015',, 23, 'PENDING', '05-May-2023');

/*
Shipment - Drew

shipment(SHIPMENT_ID, address_id, order_id, ship_status, delivery_date)
    foreign key (address_id) refrences shipping
    foreign key (order_id) refrences Order
*/
/*
shipment - jacky 
*/

insert into shipment
values ('sh0000','111111','a123456', 'PICK', null)

insert into shipment
values ('sh0001','222222' ,'b123456', 'PICK', null)

insert into shipment
values ('sh0002','333333','c123456', 'PICK', null)

insert into shipment
values ('sh0003','444444','d123456', 'PICK', null)

insert into shipment
values ('sh0004','555555','e123456', 'PACK', null)

insert into shipment
values ('sh0005','666666' ,'f123456', 'PACK', null)

insert into shipment
values ('sh0006','777777','g123456', 'PACK', null)

insert into shipment
values ('sh0007','888888','h123456', 'PACK', null)

insert into shipment
values ('sh0008','999999','i123456', 'SHIP', null)

insert into shipment
values ('sh0009','121212' ,'j123456', 'SHIP', null)

insert into shipment
values ('sh0010','131313' ,'k123456', 'SHIP', null)

insert into shipment
values ('sh0011','141414' ,'l123456', 'SHIP', null)

insert into shipment
values ('sh0012','151515','m123456', 'SHIP', null)

insert into shipment
values ('sh0013','161616','n123456', 'SHIP', null)

insert into shipment
values ('sh0014','171717' ,'o123456', 'SHIP', null)



/*
   Shyna catalog_Items insert statements

   catalog_Items(SKU, item_name, item_description, listed_price,
              avail_quatity, gender, item_color)
*/

--Bottoms

insert into catalog_Items
values
('SKU001', 'Pants', 'Comfortable pants for women', 29.99, 20, 'W', 'Blue');

insert into catalog_Items
values
('SKU002', 'Leggings', 'Stylish leggings for women', 25.99, 20, 'W', 'Black');

insert into catalog_Items
values
('SKU003', 'Jeans', 'Casual jeans for women', 39.99, 30, 'W', 'White');

insert into catalog_Items
values
('SKU004', 'Shorts', 'Atheletic shorts for women', 22.99, 30, 'W', 'Gray');

insert into catalog_Items
values
('SKU005', 'High-waisted jeans', 'High-waisted jeans for women', 27.99, 30, 'W', 'Black');

insert into catalog_Items
values
('SKU006', 'Sweatpants', 'Solid Slant pocket Sweatpants for women', 15.99, 30, 'W', 'Brown');

insert into catalog_Items
values
('SKU007', 'Pants', 'Classic regular fit pants for men', 34.99, 30, 'M', 'Black');

insert into catalog_Items
values
('SKU008', 'Shorts', 'Cargo shorts for men', 24.99, 30, 'M', 'Khaki');

insert into catalog_Items
values
('SKU009', 'Joggers', 'Casual joggers for men', 29.99, 30, 'M', 'Navy');

insert into catalog_Items
values
('SKU010', 'Cargo pants', 'Flap pocket side drawstring waist for men', 37.99, 30, 'M', 'Gray');

insert into catalog_Items
values
('SKU011', 'Sweatpants', 'Basic slant pocket drawstring sweatpants for men', 16.99, 30, 'M', 'Red');


insert into catalog_Items
values
('SKU012', 'Straight leg jeans', 'Cotton ripped straight leg jeans for men', 32.99, 30, 'M', 'Light blue');

--Tops

insert into catalog_Items
values
('SKU013', 'Women T-shirt', 'Causual cotton t-shirt for women', 7.99, 25, 'W', 'Pink');

insert into catalog_Items
values
('SKU014', 'Sweater', 'Women knitted winter sweater', 25.99, 20, 'W', 'Floral');


insert into catalog_Items
values
('SKU015', 'Blouse', 'Formal white blouse for women', 22.99, 20, 'W', 'White');


insert into catalog_Items
values
('SKU016', 'Tank-Tops', 'Solid Tank Tops for women', 5.99, 25, 'W', 'Orange');


insert into catalog_Items
values
('SKU017', 'High-Neck Sweater', 'Women turtleneck drop shoulder waffle knit sweater', 32.99, 25, 'W', 'Yellow');


insert into catalog_Items
values
('SKU018', 'Men T-shirts', 'Basic casual cotton t-shirt for men', 5.99, 25, 'M', 'Red');

insert into catalog_Items
values
('SKU019', 'Men shirt', 'Plaid print flap pocket shirt for men', 19.99, 25, 'M', 'Multicolor');


insert into catalog_Items
values
('SKU020', 'Hoodie', 'Sporty hoodie for men', 22.99, 35, 'M', 'Apricot');


insert into catalog_Items
values
('SKU021', 'Sweatshirt', 'Coloblock letter patched detail sweatshirt for men', 25.99, 35, 'M', 'Blue');


insert into catalog_Items
values
('SKU022', 'Men zip-up sweatshirt', 'Solid zip up funnel neck sweatshirt', 27.99, 20, 'M', 'Dark grey');

--Shoes

insert into catalog_Items
values
('SKU023', 'Sandals', 'Summer elastic slingback wedge sandals', 25.99, 20, 'W', 'White');


insert into catalog_Items
values
('SKU024', 'Women sneakers', 'Casual lace-up womens sneakers', 39.99, 20, 'W', 'Red');


insert into catalog_Items
values
('SKU025', 'Sports shoes', 'Women running shoes with synthetic leather', 33.99, 20, 'W', 'Multicolor');


insert into catalog_Items
values
('SKU026', 'Women wedge sneakers', 'Womens platform sneakers with wedge heels', 25.99, 20, 'W', 'Beige');


insert into catalog_Items
values
('SKU027', 'Men sneakers', 'Men fashionable lightweight colorblock sneakers', 39.99, 20, 'M', 'Green');


insert into catalog_Items
values
('SKU028', 'Boots', 'Men high top work boots with steel toe cap', 45.99, 20, 'M', 'Black');


insert into catalog_Items
values
('SKU029', 'Loafers', 'Mens fashionable and comfortable loafers', 25.99, 20, 'M', 'Bronze');


insert into catalog_Items
values
('SKU030', 'Dress shoes', 'Mens business wingtip shoes', 32.99, 20, 'M', 'Brown');



/*
bottoms

Bottoms(SKU, waist_size, material)
    foreign key (SKU) refrences Catalog_Items
*/


insert into bottoms
values
('SKU001', 26,'Cotton' );

insert into bottoms
values
('SKU002', 27,'Spandex' );

insert into bottoms
values
('SKU003', 30,'Denim');


insert into bottoms
values
('SKU004', 31,'Polyster');

insert into bottoms
values
('SKU005', 30,'Cotton');


insert into bottoms
values
('SKU006', 31,'Polyster');


insert into bottoms
values
('SKU007', 28,'Polyster');

insert into bottoms
values
('SKU008', 27,'Spandex');

insert into bottoms
values
('SKU009', 26,'Spandex');

insert into bottoms
values
('SKU010', 29,'Polyster');

insert into bottoms
values
('SKU011', 30,'Cotton');


insert into bottoms
values
('SKU012', 31,'Cotton');


/*
tops

Tops(SKU, top_size, sleeve_length, neck_line_type)
    foreign key (SKU) refrences Catalog_Items
*/


insert into tops
values
('SKU013', 'S','Short', 'Round');


insert into tops
values
('SKU014', 'M','Long', 'Round-Neck' );

insert into tops
values
('SKU015', 'L','Long', 'V-Neck' );

insert into tops
values
('SKU016', 'S','Short', 'High-Neck' );

insert into tops
values
('SKU017', 'M','Long', 'High-Neck' );


insert into tops
values
('SKU018', 'L','Short', 'Round-Neck' );

insert into tops
values
('SKU019', 'M','Long', 'Collar' );

insert into tops
values
('SKU020', 'M','Long', 'Hooded' );

insert into tops
values
('SKU021', 'S','Long', 'Crew-Neck' );

insert into tops
values
('SKU022', 'L','Long', 'Round' );




/*
shoes

Shoes(SKU, shoe_size, shoe_type)
    foreign key (SKU) refrences Catalog_Items
*/


insert into shoes
values
('SKU023', 7,'Sandals');

insert into shoes
values
('SKU024', 8,'Sneaker');

insert into shoes
values
('SKU025', 11,'Sports');

insert into shoes
values
('SKU026', 9,'Wedge sneaker');

insert into shoes
values
('SKU027', 8,'Sneaker');

insert into shoes
values
('SKU028', 10,'Boots');

insert into shoes
values
('SKU029', 9,'Loafers');

insert into shoes
values
('SKU030', 8,'Dress shoes');

/*
Line_items

line_items(ORDER_ID, SKU, quantity, price)
    foreign key (ORDER_ID) refrences Order
    foreign key (SKU) refrences Catalog_Items
*/

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('a123456', 'SKU001',2, 12);

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('b123456', 'SKU002',6, 300);

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('c123456', 'SKU003',4, 200);

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('d123456', 'SKU004',7, 400 );

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('e123456', 'SKU005',2, 90);

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('f123456', 'SKU006',1, 12);

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('g123456', 'SKU007',5, 100);

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('h123456', 'SKU008',9, 500);

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('i123456', 'SKU009',3, 130);

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('j123456', 'SKU010',8, 600);

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('k123456', 'SKU011',2, 124);

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('l123456', 'SKU012',7, 356);

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('m123456', 'SKU013',9, 127);

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('n123456', 'SKU014',4, 110);

INSERT INTO line_items(ORDER_ID, SKU, quantity, price)
VALUES('o123456', 'SKU015',9, 700);
