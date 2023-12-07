/*

    Drew Hengehold, Cosette Basto, Jacqueline Lyons, Shyna Kumar, Forrest Reid, Soran Vardanega
    CS 325 - Fall 2023
    LAST MODIFIED DATE: 5-DEC-2023

    ---------------------------
    PROJECT POPUlATE MILESTONE #3
    ---------------------------

*/


DELETE *
FROM new_user;

DELETE * 
FROM customer_profile;

DELETE *
FROM payment_info;

DELETE *
FROM addy;

DELETE * 
FROM billing;

DELETE *
FROM shipping;

DELETE * 
FROM orders;

DELETE *
FROM shipping;

DELETE *
FROM shipment;

DELETE *
FROM catalog_items;

DELETE *
FROM bottoms;

DELETE *
FROM tops;

DELETE * 
FROM shoes;

DELETE *
FROM line_items;


/*
    new_user - Drew
*/
INSERT INTO new_user
VALUES('forrest_reid', 'ForrestIsTheBest', 'ADMIN');

INSERT INTO new_user
VALUES('drew_hengehold', 'DrewIsTheBest', 'ADMIN');

INSERT INTO new_user
VALUES('cosette_basto', 'CosetteIsTheBest', 'ADMIN');

INSERT INTO new_user
VALUES('shyna_kumar', 'ShynaIsTheBest', 'ADMIN');

INSERT INTO new_user
VALUES('jacky_lyons', 'JackyIsTheBest', 'ADMIN');

INSERT INTO new_user
VALUES('soran_vardanega', 'SoranIsTheBest', 'ADMIN');

INSERT INTO new_user
VALUES('john_doe', 'ZionNational', 'CUSTOMER');

INSERT INTO new_user
VALUES('jane_smith', 'ILoveCats', 'CUSTOMER');

INSERT INTO new_user
VALUES('bob_jones', 'ILoveDogs', 'CUSTOMER');

INSERT INTO new_user
VALUES('michael_brown', 'BrownBerkely', 'CUSTOMER');

INSERT INTO new_user
VALUES('william_black', 'BlackChicago', 'CUSTOMER');

INSERT INTO new_user
VALUES('lisa_jackson', 'JacksonNYC', 'CUSTOMER');

INSERT INTO new_user
VALUES('ryan_taylor', 'Taylor13#', 'CUSTOMER');

INSERT INTO new_user
VALUES('susan_white', 'WhiteTheColor', 'CUSTOMER');

INSERT INTO new_user
VALUES('emily_green', 'GreenTheApple', 'CUSTOMER');

/* 
    forrest - customer_profiles

    customer_profiles
    foreign key (user_name) refrences new_user
*/
INSERT INTO customer_profile
VALUES ('C00001', 'john_doe', 'John', 'Doe', '1234567890', 'john.doe@email.com');

INSERT INTO customer_profile
VALUES ('C00002', 'jane_smith', 'Jane', 'Smith', '9876543210', 'jane.smith@email.com');

INSERT INTO customer_profile
VALUES ('C00003', 'bob_jones', 'Bob', 'Jones', '5556667777', 'bob.jones@email.com');

INSERT INTO customer_profile
VALUES ('C00004', 'susan_white', 'Susan', 'White', '1112223333', 'susan.white@email.com');

INSERT INTO customer_profile
VALUES ('C00005', 'michael_brown', 'Michael', 'Brown', '9998887777', 'michael.brown@email.com');

INSERT INTO customer_profile
VALUES ('C00006', 'emily_green', 'Emily', 'Green', '4445556666', 'emily.green@email.com');

INSERT INTO customer_profile
VALUES ('C00007', 'william_black', 'William', 'Black', '7778889999', 'william.black@email.com');

INSERT INTO customer_profile
VALUES ('C00008', 'lisa_jackson', 'Lisa', 'Jackson', '3332221111', 'lisa.jackson@email.com');

INSERT INTO customer_profile
VALUES ('C00009', 'ryan_taylor', 'Ryan', 'Taylor', '5554443333', 'ryan.taylor@email.com');

INSERT INTO customer_profile
VALUES ('C00010', 'soran_vardanega', 'Soran', 'Vardanega', '6667778888', 'soran.vardanega@email.com');

INSERT INTO customer_profile
VALUES ('C00011', 'shyna_kumar', 'Shyna', 'Kumar', '9990001111', 'shyna.kumar@email.com');

INSERT INTO customer_profile
VALUES ('C00012', 'jacky_lyons', 'Jacky', 'Lyons', '1110002222', 'jacky.lyons@email.com');

INSERT INTO customer_profile
VALUES ('C00013', 'drew_hengehold', 'Drew', 'Hengehold', '8887776666', 'drew.hengehold@email.com');

INSERT INTO customer_profile
VALUES ('C00014', 'cosette_basto', 'Cosette', 'Basto', '2223334444', 'cosette.basto@email.com');

INSERT INTO customer_profile
VALUES ('C00015', 'forrest_reid', 'Forrest', 'Reid', '4443332222', 'forrest.reid@email.com');

/*
 Jacky - Payment info

 payment_info
    foreign key (customer_id) refrences Customer_Profile(CUSTOMER_ID)
*/
INSERT INTO payment_info 
VALUES ('1234567890123456', 'C00001', 'John Doe', '12/25', 'john@example.com');

INSERT INTO payment_info 
VALUES ('9876543210987654', 'C00002', 'Jane Smith', '09/24', 'jane@example.com');

INSERT INTO payment_info 
VALUES ('5678901234567890', 'C00003', 'Alice Johnson', '03/23', 'alice@example.com');

INSERT INTO payment_info 
VALUES ('1122334455667788', 'C00004', 'Michael Brown', '07/23', 'michael@example.com');

INSERT INTO payment_info 
VALUES ('9988776655443322', 'C00005', 'Sarah Johnson', '10/25', 'sarah@example.com');

INSERT INTO payment_info 
VALUES ('1212121212121212', 'C00006', 'Emily Davis', '05/24', 'emily@example.com');

INSERT INTO payment_info 
VALUES ('4545454545454545', 'C00007', 'David Wilson', '11/23', 'david@example.com');

INSERT INTO payment_info 
VALUES ('7878787878787878', 'C00008', 'Sophia Garcia', '08/24', 'sophia@example.com');

INSERT INTO payment_info 
VALUES ('3232323232323232', 'C00009', 'Matthew Martinez', '02/23', 'matthew@example.com');

INSERT INTO payment_info 
VALUES ('6666666666666666', 'C00010', 'Olivia Lopez', '06/25', 'olivia@example.com');

INSERT INTO payment_info 
VALUES ('9999999999999999', 'C00011', 'Ethan Adams', '09/23', 'ethan@example.com');

INSERT INTO payment_info 
VALUES ('8888888888888888', 'C00012', 'Ava Hernandez', '12/24', 'ava@example.com');

INSERT INTO payment_info 
VALUES ('1010101010101010', 'C00013', 'Noah Taylor', '04/23', 'noah@example.com');

INSERT INTO payment_info 
VALUES ('7777777777777777', 'C00014', 'Isabella Nguyen', '01/25', 'isabella@example.com');

/*
 Forrest - addy

addy(ADDRESS_ID, customer_id, street, city, state, zip)
    foreign key (customer_id) refrences Customer_Profile(CUSTOMER_ID)

*/
INSERT INTO addy 
VALUES ('A00001', 'C00001', '123 Main St', 'Anytown', 'CA', '12345');

INSERT INTO addy 
VALUES ('A00002', 'C00002', '456 Oak Ave', 'Somewhereville', 'NY', '54321');

INSERT INTO addy 
VALUES ('A00003', 'C00003', '789 Elm Blvd', 'Nowhere City', 'TX', '67890');

INSERT INTO addy 
VALUES ('A00004', 'C00004', '101 Pine Ln', 'Smalltown', 'FL', '13579');

INSERT INTO addy 
VALUES ('A00005', 'C00005', '202 Maple Dr', 'Big City', 'IL', '24680');

INSERT INTO addy 
VALUES ('A00006', 'C00006', '303 Birch St', 'Anywhere', 'AZ', '98765');

INSERT INTO addy 
VALUES ('A00007', 'C00007', '404 Cedar Ave', 'Everytown', 'WA', '11223');

INSERT INTO addy 
VALUES ('A00008', 'C00008', '505 Redwood Rd', 'Middleofnowhere', 'GA', '33445');

INSERT INTO addy 
VALUES ('A00009', 'C00009', '606 Spruce Blvd', 'Hometown', 'MI', '55667');

INSERT INTO addy 
VALUES ('A00010', 'C00010', '707 Cedar Ln', 'Downtown', 'OR', '77889');

INSERT INTO addy 
VALUES ('A00011', 'C00011', '808 Pine Dr', 'Uptown', 'NC', '99001');

INSERT INTO addy 
VALUES ('A00012', 'C00012', '909 Elm St', 'Suburbia', 'SC', '11234');

INSERT INTO addy 
VALUES ('A00013', 'C00013', '121 Oak Blvd', 'Countryside', 'PA', '22345');

INSERT INTO addy 
VALUES ('A00014', 'C00014', '232 Pine Dr', 'Metropolis', 'NJ', '33456');

INSERT INTO addy 
VALUES ('A00015', 'C00015', '343 Maple Ln', 'Village', 'UT', '44567');

/*
Billing

 billin
    foreign key (ADDRESS_ID) refrences Address
    foreign key (CARD_NUM) refrences Payment_info
*/


INSERT INTO billing 
VALUES ('A00001', '1234567890123456');

INSERT INTO billing 
VALUES ('A00002', '9876543210987654');

INSERT INTO billing 
VALUES ('A00003', '5678901234567890');

INSERT INTO billing 
VALUES ('A00004', '1122334455667788');

INSERT INTO billing 
VALUES ('A00005', '9988776655443322');

INSERT INTO billing 
VALUES ('A00006', '1212121212121212');

INSERT INTO billing 
VALUES ('A00007', '4545454545454545');

INSERT INTO billing 
VALUES ('A00008', '7878787878787878');

INSERT INTO billing 
VALUES ('A00009', '3232323232323232');

INSERT INTO billing 
VALUES ('A00010', '6666666666666666');

INSERT INTO billing 
VALUES ('A00011', '9999999999999999');

INSERT INTO billing 
VALUES ('A00012', '8888888888888888');

INSERT INTO billing 
VALUES ('A00013', '1010101010101010');

INSERT INTO billing 
VALUES ('A00014', '7777777777777777');

INSERT INTO billing 
VALUES ('A00015', '7878787878787878');


/*
 Cosette - Shipping info Insert statements 

 shipping(ADDRESS_ID, ship_instructions)
    foreign key (ADDRESS_ID) refrences Address
*/

INSERT INTO shipping
VALUES( 'A00001', 'N/A');

INSERT INTO shipping 
VALUES ('A00002', 'Leave at door'); 

INSERT INTO shipping 
VALUES ('A00003', 'Leave at gate'); 

INSERT INTO shipping 
VALUES ('A00004', 'N/A');

INSERT INTO shipping 
VALUES ('A00005', 'Leave by mailbox'); 

INSERT INTO shipping 
VALUES ('A00006', 'Leave at door');

INSERT INTO shipping 
VALUES ('A00007', 'Leave on stair'); 

INSERT INTO shipping 
VALUES ('A00008', 'N/A');

INSERT INTO shipping 
VALUES ('A00009', 'N/A');

INSERT INTO shipping 
VALUES ('A00010', 'Leave by fence');    

INSERT INTO shipping 
VALUES ('A00011', 'Leave on stair');

INSERT INTO shipping 
VALUES ('A00012', 'Leave at door');

INSERT INTO shipping 
VALUES ('A00013', 'N/A');

INSERT INTO shipping 
VALUES ('A00014', 'Leave on stair');   

INSERT INTO shipping 
VALUES ('A00015', 'Leave by fence');
 

 /*
Order - Soran

Order(ORDER_ID, customer_id, order_total, order_states, date_ordered)
    foreign key (customer_id) refrences Customer_Profile
*/
Prompt Orders Start

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('a12345', 'C00001',  35, 'PENDING', '01-Jan-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('b12345', 'C00002',  40, 'SHIPPED', '03-Mar-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('c12345', 'C00003',  23, 'INVOICED', '08-Aug-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('d12345', 'C00004', 20,'RETURNED', '10-OCT-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('e12345', 'C00005',  32, 'INVOICED', '01-Jan-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('f12345', 'C00006',  48, 'RETURNED', '04-Apr-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('g12345', 'C00007', 50, 'SHIPPED', '12-Dec-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('h12345', 'C00008', 37, 'PENDING', '01-Jan-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('i12345', 'C00009', 24, 'INVOICED', '09-Sep-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('j12345', 'C00010',  43, 'PENDING', '01-Jan-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('k12345', 'C00011',27,'SHIPPED', '07-Jul-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('l12345', 'C00012', 55, 'INVOICED', '02-Feb-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('m12345', 'C00013', 58, 'PENDING', '06-Jun-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('n12345', 'C00014', 22, 'SHIPPED', '11-Nov-2023');

INSERT INTO orders(ORDER_ID, customer_id, order_total, order_states, date_ordered)
VALUES('o12345','C00015', 23, 'PENDING', '05-May-2023');

Prompt Order Start
/*
Shipment - Drew

shipment(SHIPMENT_ID, address_id, order_id, ship_status, delivery_date)
    foreign key (address_id) refrences shipping
    foreign key (order_id) refrences Order
*/
/*
shipment - jacky 
*/

INSERT INTO shipment
VALUES ('sh0000','A00001','a12345', 'PICK', null);

INSERT INTO shipment
VALUES ('sh0001','A00002' ,'b12345', 'PICK', null);

INSERT INTO shipment
VALUES ('sh0002','A00003','c12345', 'PICK', null);

INSERT INTO shipment
VALUES ('sh0003','A00004','d12345', 'PICK', null);

INSERT INTO shipment
VALUES ('sh0004','A00005','e12345', 'PACK', null);

INSERT INTO shipment
VALUES ('sh0005','A00006','f12345', 'PACK', null);

INSERT INTO shipment
VALUES ('sh0006','A00007','g12345', 'PACK', null);

INSERT INTO shipment
VALUES ('sh0007','A00008','h12345', 'PACK', null);

INSERT INTO shipment
VALUES ('sh0008','A00009','i12345', 'SHIP','02-Dec-2023');

INSERT INTO shipment
VALUES ('sh0009','A00010' ,'j12345', 'SHIP','03-Dec-2023');

INSERT INTO shipment
VALUES ('sh0010','A00011' ,'k12345', 'SHIP','04-Dec-2023');

INSERT INTO shipment
VALUES ('sh0011','A00012' ,'l12345', 'SHIP','05-Dec-2023');

INSERT INTO shipment
VALUES ('sh0012','A00013','m12345', 'SHIP','06-Dec-2023');

INSERT INTO shipment
VALUES ('sh0013','A00014','n12345', 'SHIP','07-Dec-2023');

INSERT INTO shipment
VALUES ('sh0014','A00015' ,'o12345', 'SHIP','08-Dec-2023');

/*
   Shyna catalog_Items insert statements

   catalog_Items(SKU, item_name, item_description, listed_price,
              avail_quatity, gender, item_color)
*/

--Bottoms
Prompt Catalog Start

INSERT INTO catalog_Items
VALUES('SKU001', 'Pants', 'Comfortable pants for women', 29.99, 20, 'W', 'Blue');

INSERT INTO catalog_Items
VALUES('SKU002', 'Leggings', 'Stylish leggings for women', 25.99, 20, 'W', 'Black');

INSERT INTO catalog_Items
VALUES('SKU003', 'Jeans', 'Casual jeans for women', 39.99, 30, 'W', 'White');

INSERT INTO catalog_Items
VALUES('SKU004', 'Shorts', 'Atheletic shorts for women', 22.99, 30, 'W', 'Gray');

INSERT INTO catalog_Items
VALUES('SKU005', 'High-waisted jeans', 'High-waisted jeans for women', 27.99, 30, 'W', 'Black');

INSERT INTO catalog_Items
VALUES('SKU006', 'Sweatpants', 'Solid Slant pocket Sweatpants for women', 15.99, 30, 'W', 'Brown');

INSERT INTO catalog_Items
VALUES('SKU007', 'Pants', 'Classic regular fit pants for men', 34.99, 30, 'M', 'Black');

INSERT INTO catalog_Items
VALUES('SKU008', 'Shorts', 'Cargo shorts for men', 24.99, 30, 'M', 'Khaki');

INSERT INTO catalog_Items
VALUES('SKU009', 'Joggers', 'Casual joggers for men', 29.99, 30, 'M', 'Navy');

INSERT INTO catalog_Items
VALUES('SKU010', 'Cargo pants', 'Flap pocket side drawstring waist for men', 37.99, 30, 'M', 'Gray');

INSERT INTO catalog_Items
VALUES('SKU011', 'Sweatpants', 'Basic slant pocket drawstring sweatpants for men', 16.99, 30, 'M', 'Red');

INSERT INTO catalog_Items
VALUES('SKU012', 'Straight leg jeans', 'Cotton ripped straight leg jeans for men', 32.99, 30, 'M', 'Light blue');

Prompt Catalog End

--Tops

INSERT INTO catalog_Items
VALUES('SKU013', 'Women T-shirt', 'Causual cotton t-shirt for women', 7.99, 25, 'W', 'Pink');

INSERT INTO catalog_Items
VALUES('SKU014', 'Sweater', 'Women knitted winter sweater', 25.99, 20, 'W', 'Floral');

INSERT INTO catalog_Items
VALUES('SKU015', 'Blouse', 'Formal white blouse for women', 22.99, 20, 'W', 'White');

INSERT INTO catalog_Items
VALUES('SKU016', 'Tank-Tops', 'Solid Tank Tops for women', 5.99, 25, 'W', 'Orange');

INSERT INTO catalog_Items
VALUES('SKU017', 'High-Neck Sweater', 'Women turtleneck drop shoulder waffle knit sweater', 32.99, 25, 'W', 'Yellow');

INSERT INTO catalog_Items
VALUES('SKU018', 'Men T-shirts', 'Basic casual cotton t-shirt for men', 5.99, 25, 'M', 'Red');

INSERT INTO catalog_Items
VALUES('SKU019', 'Men shirt', 'Plaid print flap pocket shirt for men', 19.99, 25, 'M', 'Multicolor');

INSERT INTO catalog_Items
VALUES('SKU020', 'Hoodie', 'Sporty hoodie for men', 22.99, 35, 'M', 'Apricot');

INSERT INTO catalog_Items
VALUES('SKU021', 'Sweatshirt', 'Coloblock letter patched detail sweatshirt for men', 25.99, 35, 'M', 'Blue');

INSERT INTO catalog_Items
VALUES('SKU022', 'Men zip-up sweatshirt', 'Solid zip up funnel neck sweatshirt', 27.99, 20, 'M', 'Dark grey');

--Shoes

INSERT INTO catalog_Items
VALUES('SKU023', 'Sandals', 'Summer elastic slingback wedge sandals', 25.99, 20, 'W', 'White');

INSERT INTO catalog_Items
VALUES('SKU024', 'Women sneakers', 'Casual lace-up womens sneakers', 39.99, 20, 'W', 'Red');

INSERT INTO catalog_Items
VALUES('SKU025', 'Sports shoes', 'Women running shoes with synthetic leather', 33.99, 20, 'W', 'Multicolor');

INSERT INTO catalog_Items
VALUES('SKU026', 'Women wedge sneakers', 'Womens platform sneakers with wedge heels', 25.99, 20, 'W', 'Beige');

INSERT INTO catalog_Items
VALUES('SKU027', 'Men sneakers', 'Men fashionable lightweight colorblock sneakers', 39.99, 20, 'M', 'Green');

INSERT INTO catalog_Items
VALUES('SKU028', 'Boots', 'Men high top work boots with steel toe cap', 45.99, 20, 'M', 'Black');

INSERT INTO catalog_Items
VALUES('SKU029', 'Loafers', 'Mens fashionable and comfortable loafers', 25.99, 20, 'M', 'Bronze');

INSERT INTO catalog_Items
VALUES('SKU030', 'Dress shoes', 'Mens business wingtip shoes', 32.99, 20, 'M', 'Brown');

/*
bottoms

Bottoms(SKU, waist_size, material)
    foreign key (SKU) refrences Catalog_Items
*/

INSERT INTO bottoms
VALUES('SKU001', 26,'Cotton' );

INSERT INTO bottoms
VALUES('SKU002', 27,'Spandex' );

INSERT INTO bottoms
VALUES('SKU003', 30,'Denim');

INSERT INTO bottoms
VALUES('SKU004', 31,'Polyster');

INSERT INTO bottoms
VALUES('SKU005', 30,'Cotton');

INSERT INTO bottoms
VALUES('SKU006', 31,'Polyster');

INSERT INTO bottoms
VALUES('SKU007', 28,'Polyster');

INSERT INTO bottoms
VALUES('SKU008', 27,'Spandex');

INSERT INTO bottoms
VALUES('SKU009', 26,'Spandex');

INSERT INTO bottoms
VALUES('SKU010', 29,'Polyster');

INSERT INTO bottoms
VALUES('SKU011', 30,'Cotton');

INSERT INTO bottoms
VALUES('SKU012', 31,'Cotton');

/*
tops

Tops(SKU, top_size, sleeve_length, neck_line_type)
    foreign key (SKU) refrences Catalog_Items
*/

INSERT INTO tops
VALUES('SKU013', 'S','Short', 'Round');

INSERT INTO tops
VALUES('SKU014', 'M','Long', 'Round-Neck' );

INSERT INTO tops
VALUES('SKU015', 'L','Long', 'V-Neck' );

INSERT INTO tops
VALUES('SKU016', 'S','Short', 'High-Neck' );

INSERT INTO tops
VALUES('SKU017', 'M','Long', 'High-Neck' );

INSERT INTO tops
VALUES('SKU018', 'L','Short', 'Round-Neck' );

INSERT INTO tops
VALUES('SKU019', 'M','Long', 'Collar' );

INSERT INTO tops
VALUES('SKU020', 'M','Long', 'Hooded' );

INSERT INTO tops
VALUES('SKU021', 'S','Long', 'Crew-Neck' );

INSERT INTO tops
VALUES('SKU022', 'L','Long', 'Round' );

/*
shoes

Shoes(SKU, shoe_size, shoe_type)
    foreign key (SKU) refrences Catalog_Items
*/

INSERT INTO shoes
VALUES('SKU023', 7,'Sandals');

INSERT INTO shoes
VALUES('SKU024', 8,'Sneaker');

INSERT INTO shoes
VALUES('SKU025', 11,'Sports');

INSERT INTO shoes
VALUES('SKU026', 9,'Wedge sneaker');

INSERT INTO shoes
VALUES('SKU027', 8,'Sneaker');

INSERT INTO shoes
VALUES('SKU028', 10,'Boots');

INSERT INTO shoes
VALUES('SKU029', 9,'Loafers');

INSERT INTO shoes
VALUES('SKU030', 8,'Dress shoes');

/*
Line_items

line_items
    foreign key (ORDER_ID) refrences Order
    foreign key (SKU) refrences Catalog_Items
*/

INSERT INTO line_items
VALUES('a12345', 'SKU001', 2, 12);

INSERT INTO line_items
VALUES('b12345', 'SKU002', 6, 300);

INSERT INTO line_items
VALUES('c12345', 'SKU003', 4, 200);

INSERT INTO line_items
VALUES('d12345', 'SKU004', 7, 400 );

INSERT INTO line_items
VALUES('e12345', 'SKU005', 2, 90);

INSERT INTO line_items
VALUES('f12345', 'SKU006', 1, 12);

INSERT INTO line_items
VALUES('g12345', 'SKU007', 5, 100);

INSERT INTO line_items
VALUES('h12345', 'SKU008', 9, 500);

INSERT INTO line_items
VALUES('i12345', 'SKU009', 3, 130);

INSERT INTO line_items
VALUES('j12345', 'SKU010', 8, 600);

INSERT INTO line_items
VALUES('k12345', 'SKU011', 2, 124);

INSERT INTO line_items
VALUES('l12345', 'SKU012', 7, 356);

INSERT INTO line_items
VALUES('m12345', 'SKU013', 9, 127);

INSERT INTO line_items
VALUES('n12345', 'SKU014', 4, 110);

INSERT INTO line_items
VALUES('o12345', 'SKU015', 9, 700);
