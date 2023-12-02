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
Order - Drew

Order(ORDER_ID, customer_id, order_total, order_states, date_ordered)
    foreign key (customer_id) refrences Customer_Profile
*/

/*
Shipment - Drew

shipment(SHIPMENT_ID, address_id, order_id, ship_status, delivery_date)
    foreign key (address_id) refrences shipping
    foreign key (order_id) refrences Order
*/

insert into shipment
values ('sh0000', , , 'PICK', null)

insert into shipment
values ('sh0001', , , 'PICK', null)

insert into shipment
values ('sh0002', , , 'PICK', null)

insert into shipment
values ('sh0003', , , 'PICK', null)

insert into shipment
values ('sh0004', , , 'PACK', null)

insert into shipment
values ('sh0005', , , 'PACK', null)

insert into shipment
values ('sh0006', , , 'PACK', null)

insert into shipment
values ('sh0007', , , 'PACK', null)

insert into shipment
values ('sh0008', , , 'SHIP', null)

insert into shipment
values ('sh0009', , , 'SHIP', null)

insert into shipment
values ('sh0010', , , 'SHIP', null)

insert into shipment
values ('sh0011', , , 'SHIP', null)

insert into shipment
values ('sh0012', , , 'SHIP', null)

insert into shipment
values ('sh0013', , , 'SHIP', null)

insert into shipment
values ('sh0014', , , 'SHIP', null)


/*
   Shyna catalog_Items insert statements

   catalog_Items(SKU, item_name, item_description, listed_price,
              avail_quatity, gender, item_color)
*/

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

bottoms(SKU, material)
    foreign key (SKU) refrences Catalog_Items
*/


insert into bottoms
values
('SKU001', 'Cotton' );

insert into bottoms
values
('SKU002', 'Spandex' );

insert into bottoms
values
('SKU003', 'Denim');


insert into bottoms
values
('SKU004', 'Polyster');

insert into bottoms
values
('SKU005', 'Cotton');


insert into bottoms
values
('SKU006', 'Polyster');


insert into bottoms
values
('SKU007', 'Polyster');

insert into bottoms
values
('SKU008', 'Spandex');

insert into bottoms
values
('SKU009', 'Spandex');

insert into bottoms
values
('SKU010', 'Polyster');

insert into bottoms
values
('SKU011', 'Cotton');


insert into bottoms
values
('SKU012', 'Cotton');


/*
 --------bottom_sizes 

        bottom_sizes(WAIST_SIZE, SKU)
             foreign key (SKU) references bottoms(SKU)

*/

insert into bottom_sizes
values
(26, 'SKU001');

insert into bottom_sizes
values
(27, 'SKU001');

insert into bottom_sizes
values
(28, 'SKU001');


insert into bottom_sizes
values
(26, 'SKU002');

insert into bottom_sizes
values
(27, 'SKU002');

insert into bottom_sizes
values
(28, 'SKU002');

insert into bottom_sizes
values
(26, 'SKU003');

insert into bottom_sizes
values
(27, 'SKU003');

insert into bottom_sizes
values
(28, 'SKU003');


insert into bottom_sizes
values
(26, 'SKU004');

insert into bottom_sizes
values
(27, 'SKU004');


insert into bottom_sizes
values
(28, 'SKU004');

insert into bottom_sizes
values
(26, 'SKU005');

insert into bottom_sizes
values
(27, 'SKU005');

insert into bottom_sizes
values
(28, 'SKU005');


insert into bottom_sizes
values
(26, 'SKU006');

insert into bottom_sizes
values
(27, 'SKU006');

insert into bottom_sizes
values
(28, 'SKU006');

insert into bottom_sizes
values
(32, 'SKU007');

insert into bottom_sizes
values
(34, 'SKU007');

insert into bottom_sizes
values
(36, 'SKU007');

insert into bottom_sizes
values
(32, 'SKU008');

insert into bottom_sizes
values
(34, 'SKU008');

insert into bottom_sizes
values
(36, 'SKU008');

insert into bottom_sizes
values
(32, 'SKU009');

insert into bottom_sizes
values
(34, 'SKU009');

insert into bottom_sizes
values
(36, 'SKU009');

insert into bottom_sizes
values
(32, 'SKU010');

insert into bottom_sizes
values
(34, 'SKU010');

insert into bottom_sizes
values
(36, 'SKU010');


insert into bottom_sizes
values
(32, 'SKU011');

insert into bottom_sizes
values
(34, 'SKU011');

insert into bottom_sizes
values
(36, 'SKU011');


insert into bottom_sizes
values
(32, 'SKU012');

insert into bottom_sizes
values
(34, 'SKU012');

insert into bottom_sizes
values
(36, 'SKU012');






/*
tops

tops(SKU, sleeve_length, neck_line_type)
    foreign key (SKU) refrences Catalog_Items
*/


insert into tops
values
('SKU013', 'Short', 'Round');


insert into tops
values
('SKU014', 'Long', 'Round-Neck' );

insert into tops
values
('SKU015', 'Long', 'V-Neck' );

insert into tops
values
('SKU016', 'Short', 'High-Neck' );

insert into tops
values
('SKU017', 'Long', 'High-Neck' );


insert into tops
values
('SKU018', 'Short', 'Round-Neck' );

insert into tops
values
('SKU019', 'Long', 'Collar' );

insert into tops
values
('SKU020', 'Long', 'Hooded' );

insert into tops
values
('SKU021', 'Long', 'Crew-Neck' );

insert into tops
values
('SKU022', 'Long', 'Round' );



/*
  ---------top_sizes

        top_sizes(TOP_SIZE, SKU)
           foreign key (SKU) references tops(SKU)

*/




insert into top_sizes
values
('S', 'SKU013');

insert into top_sizes
values
('M', 'SKU013');

insert into top_sizes
values
('L', 'SKU013');

insert into top_sizes
values
('S', 'SKU014');

insert into top_sizes
values
('M', 'SKU014');

insert into top_sizes
values
('L', 'SKU014');

insert into top_sizes
values
('S', 'SKU015');

insert into top_sizes
values
('M', 'SKU015');

insert into top_sizes
values
('L', 'SKU015');

insert into top_sizes
values
('S', 'SKU016');

insert into top_sizes
values
('M', 'SKU016');

insert into top_sizes
values
('L', 'SKU016');

insert into top_sizes
values
('S', 'SKU017');

insert into top_sizes
values
('M', 'SKU017');

insert into top_sizes
values
('L', 'SKU017');

insert into top_sizes
values
('S', 'SKU018');

insert into top_sizes
values
('M', 'SKU018');

insert into top_sizes
values
('L', 'SKU018');

insert into top_sizes
values
('S', 'SKU019');

insert into top_sizes
values
('M', 'SKU019');

insert into top_sizes
values
('L', 'SKU019');

insert into top_sizes
values
('S', 'SKU020');

insert into top_sizes
values
('M', 'SKU020');

insert into top_sizes
values
('L', 'SKU020');

insert into top_sizes
values
('S', 'SKU021');

insert into top_sizes
values
('M', 'SKU021');

insert into top_sizes
values
('L', 'SKU021');

insert into top_sizes
values
('S', 'SKU022');

insert into top_sizes
values
('M', 'SKU022');

insert into top_sizes
values
('L', 'SKU022');




/*
shoes

shoes(SKU, shoe_type)
    foreign key (SKU) refrences Catalog_Items
*/


insert into shoes
values
('SKU023', 'Sandals');

insert into shoes
values
('SKU024', 'Sneaker');

insert into shoes
values
('SKU025', 'Sports');

insert into shoes
values
('SKU026', 'Wedge sneaker');

insert into shoes
values
('SKU027', 'Sneaker');

insert into shoes
values
('SKU028', 'Boots');

insert into shoes
values
('SKU029', 'Loafers');

insert into shoes
values
('SKU030', 'Dress shoes');


/*
 ---------shoe_sizes

      shoe_sizes(SHOE_SIZE, SKU)
           foreign key (SKU) references shoes(SKU)
*/

insert into shoe_sizes
values
(7, 'SKU023');

insert into shoe_sizes
values
(8, 'SKU023');

insert into shoe_sizes
values
(9, 'SKU023');

insert into shoe_sizes
values
(7, 'SKU024');

insert into shoe_sizes
values
(8, 'SKU024');

insert into shoe_sizes
values
(9, 'SKU024');

insert into shoe_sizes
values
(7, 'SKU025');

insert into shoe_sizes
values
(8, 'SKU025');

insert into shoe_sizes
values
(9, 'SKU025');

insert into shoe_sizes
values
(7, 'SKU026');

insert into shoe_sizes
values
(8, 'SKU026');

insert into shoe_sizes
values
(9, 'SKU026');

insert into shoe_sizes
values
(10, 'SKU027');

insert into shoe_sizes
values
(11, 'SKU027');

insert into shoe_sizes
values
(12, 'SKU027');

insert into shoe_sizes
values
(10, 'SKU028');

insert into shoe_sizes
values
(11, 'SKU028');

insert into shoe_sizes
values
(12, 'SKU028');

insert into shoe_sizes
values
(10, 'SKU029');

insert into shoe_sizes
values
(11, 'SKU029');

insert into shoe_sizes
values
(12, 'SKU029');

insert into shoe_sizes
values
(10, 'SKU030');

insert into shoe_sizes
values
(11, 'SKU030');

insert into shoe_sizes
values
(12, 'SKU030');





/*
Line_items

line_items(ORDER_ID, SKU, quantity, price)
    foreign key (ORDER_ID) refrences Order
    foreign key (SKU) refrences Catalog_Items
*/
