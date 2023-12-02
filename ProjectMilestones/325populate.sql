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
 addy

addy(ADDRESS_ID, customer_id, street, city, state, zip)
    foreign key (customer_id) refrences Customer_Profile(CUSTOMER_ID)

*/


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
Line_items

line_items(ORDER_ID, SKU, quantity, price)
    foreign key (ORDER_ID) refrences Order
    foreign key (SKU) refrences Catalog_Items
*/

/*
Shipment - Drew

shipment(SHIPMENT_ID, address_id, order_id, ship_status, delivery_date)
    foreign key (address_id) refrences shipping
    foreign key (order_id) refrences Order
*/

insert into shipment
values ('sh0000','111111','**', 'PICK', null)

insert into shipment
values ('sh0001','222222' ,** , 'PICK', null)

insert into shipment
values ('sh0002','333333',** , 'PICK', null)

insert into shipment
values ('sh0003','444444', ***, 'PICK', null)

insert into shipment
values ('sh0004','555555', **, 'PACK', null)

insert into shipment
values ('sh0005','666666' , **, 'PACK', null)

insert into shipment
values ('sh0006','777777', **, 'PACK', null)

insert into shipment
values ('sh0007','888888', **, 'PACK', null)

insert into shipment
values ('sh0008','999999', **, 'SHIP', null)

insert into shipment
values ('sh0009','121212' ,** , 'SHIP', null)

insert into shipment
values ('sh0010','131313' , **, 'SHIP', null)

insert into shipment
values ('sh0011','141414' ,** , 'SHIP', null)

insert into shipment
values ('sh0012','151515', **, 'SHIP', null)

insert into shipment
values ('sh0013','161616', **, 'SHIP', null)

insert into shipment
values ('sh0014','171717' , **, 'SHIP', null)


/*
   Shyna catalog_Items insert statements

   catalog_Items(SKU, item_name, item_description, listed_price,
              avail_quatity, gender, item_color)
*/

insert into catalog_Items
values
('BG011AAB', 'High waisted jean', 'Tall Fit Waist', 12.99, 30, 'W', 'Blue');

insert into catalog_Items
values
('BG011ABC', 'High waisted jean', '80s style mens jean', 12.99, 30, 'M', 'Blue');

insert into catalog_Items
values
('BG011ACD', 'Bottom', 'High waisted jean', 12.99, 30, 'W', 'Black');

insert into catalog_Items
values
('BG011ADE', 'Bottom', 'High waisted jean', 12.99, 30, 'M', 'Black');

insert into catalog_Items
values
('BG011AEF', 'Bottom', 'High waisted jean', 12.99, 30, 'W', 'White');

insert into catalog_Items
values
('BG011AFG', 'Bottom', 'High waisted jean', 12.99, 30, 'M', 'White');

insert into catalog_Items
values
('BG011AGH', 'Bottom', 'High waisted jean', 12.99, 30, 'W', 'Brown');

insert into catalog_Items
values
('BG011AHI', 'Bottom', 'High waisted jean', 12.99, 30, 'M', 'Brown');


insert into catalog_Items
values
('TG011AAB', 'Tops', 'Basic casual fit', 5.99, 25, 'W', 'White');

insert into catalog_Items
values
('TG011ABC', 'Tops', 'Basic Casual fit', 5.99, 25, 'M', 'White');


insert into catalog_Items
values
('TG011ACD', 'Tops', 'Basic Casual fit', 5.99, 25, 'W', 'Red');


insert into catalog_Items
values
('TG011ADE', 'Tops', 'Basic Casual fit', 5.99, 25, 'M', 'Red');


insert into catalog_Items
values
('TG011AEF', 'Tops', 'Basic Casual fit', 5.99, 25, 'W', 'Black');


insert into catalog_Items
values
('TG011AFG', 'Tops', 'Basic Casual fit', 5.99, 25, 'M', 'Balck');

insert into catalog_Items
values
('TG011AGH', 'Tops', 'Basic Casual fit', 5.99, 25, 'W', 'Blue');


insert into catalog_Items
values
('TG011AHI', 'Tops', 'Basic Casual fit', 5.99, 25, 'M', 'Blue');


insert into catalog_Items
values
('SG011AAB', 'Shoes', 'Women casual shoes', 19.99, 15, 'W', 'Black');


insert into catalog_Items
values
('SG011AABC', 'Shoes', 'Women casual shoes', 19.99, 15, 'M', 'Black');

insert into catalog_Items
values
('SG011ACD', 'Shoes', 'Women casual shoes', 19.99, 15, 'W', 'White');

insert into catalog_Items
values
('SG011ADE', 'Shoes', 'Women casual shoes', 19.99, 15, 'M', 'White');


/*
bottoms

bottoms(SKU, waist_size, material)
    foreign key (SKU) refrences Catalog_Items
*/


/*
tops

tops(SKU, top_size, sleeve_length, neck_line_type)
    foreign key (SKU) refrences Catalog_Items
*/


/*
shoes

shoes(SKU, shoe_size, shoe_type)
    foreign key (SKU) refrences Catalog_Items
*/