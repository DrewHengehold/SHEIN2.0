/*

    Drew Hengehold, Cosette Basto, Jacqueline Lyons, Shyna Kumar, Forrest Reid, Soran Vardanega
    CS 325 - Fall 2023
    LAST MODIFIED DATE: 5-DEC-2023

    ---------------------------
    PROJECT DESIGN MILESTONE #2
    ---------------------------

*/

/*
    Drop all tables
*/

drop table new_user             cascade constraints;
drop table customer_profile     cascade constraints;
drop table line_items           cascade constraints;
drop table orders               cascade constraints;
drop table payment_info         cascade constraints;
drop table shipment             cascade constraints;
drop table shipping             cascade constraints;
drop table billing              cascade constraints;
drop table addy                 cascade constraints;
drop table catalog_items        cascade constraints;
drop table bottoms              cascade constraints;
drop table tops                 cascade constraints;
drop table shoes                cascade constraints;

/*
    Table: User
    Desc: Stores user web-profile information
*/

create table new_user
(
    USER_NAME       varchar2 (25),
    password        varchar2 (25),
    user_type       varchar2 (8) check(user_type in('ADMIN', 'CUSTOMER')),
    primary key (USER_NAME)
);

/*
    Table: customer_profile
    Desc: Stores basic customer information and contact info
*/

create table customer_profile
(
    CUSTOMER_ID     char (6), 
    user_name       varchar2 (25), 
    fname           varchar2 (25), 
    lname           varchar2 (25), 
    phone           char (10), 
    email           varchar2 (25),
    primary key(CUSTOMER_ID),
    foreign key(user_name) references new_user(USER_NAME)
);


/*
    Table: Payment_info
    Desc: Holds user's card info and email for billing info to be sent to.
    References: customer_profile.
*/

create table payment_info
(
    CARD_NUM        char (16), 
    customer_id     char (6), 
    name_on_card    varchar2 (25), 
    exp_date        varchar2 (25), 
    billing_email   varchar2 (25),
    primary key     (CARD_NUM),
    foreign key     (customer_id)   references customer_profile (CUSTOMER_ID)
);



/*
    Table: addy
    Desc: Stores user's address info. 
*/

create table addy
(
    ADDRESS_ID      char(6),
    customer_id     char(6),
    street          varchar(25),
    city            varchar(25),
    us_state        char(2),
    zip             char(5),
    primary key     (ADDRESS_ID),
    foreign key     (customer_id) references customer_profile(CUSTOMER_ID)
);


/*
    Table: Shipping
    Desc: Tracks shipping instructions for a given address. 
    References: Address.
*/

create table shipping
 (
    ADDRESS_ID      char(6),
    ship_instructions    varchar2 (45),
    primary key     (ADDRESS_ID),
    foreign key     (ADDRESS_ID) references addy(ADDRESS_ID)
  );

/*
    Table: Billing
    Desc: Stores billing information. 
    References: Address, Payment_info.
*/

create table billing 
  (
    ADDRESS_ID      char(6),
    CARD_NUM        char (16),
    primary key     (ADDRESS_ID, CARD_NUM),
    foreign key     (ADDRESS_ID) references addy(ADDRESS_ID),
    foreign key     (CARD_NUM)      references payment_info(CARD_NUM)
  );

/*
    Table: Order
    Desc: Tracks order's status and order date. 
    References: customer_profile.
*/

create table orders
(
    ORDER_ID        char (6),
    customer_id     char (6),
    order_total     number,
    order_states    varchar2 (8) check(order_states in('PENDING', 'SHIPPED', 'INVOICED', 'RETURNED')),
    date_ordered    date,
    primary key     (ORDER_ID),
    foreign key     (customer_id)   references customer_profile (CUSTOMER_ID)
);

/*
    Table: Shipment
    Desc: Tracks shipment's status and delivery date. 
    References: Order, Shipment.
*/
create table shipment
(
    SHIPMENT_ID     char (6), 
    address_id      char (6), 
    order_id        char (6), 
    ship_status     varchar2 (4) check(ship_status in('PICK', 'PACK', 'SHIP')), 
    delivery_date   date,
    primary key     (SHIPMENT_ID),
    foreign key     (address_id)    references shipping (ADDRESS_ID),
    foreign key     (order_id)      references orders (ORDER_ID)
);

/*
    Table: Catalog_items
    Desc: Stores user's address info. 
*/

Create table catalog_items
(
    SKU             char(8),               
    item_name       varchar2(25),
    item_desc       varchar2(50),
    listed_price    decimal(5,2),
    avail_quantity  integer,
    gender          varchar2 (1) check(gender in('W', 'M')),
    item_color      varchar2(10),
    primary key     (SKU)
);

/*
    Table: Bottoms
    Desc: Stores bottoms catalog info. 
    References: Catalog_items.
*/

Create table bottoms 
(
    SKU             char(8),
    waist_size      number,
    material        varchar2(15),
    primary key     (SKU),
    foreign key     (SKU) references catalog_items (SKU)
);

/*
    Table: Tops
    Desc: Stores tops catalog info. 
    References: Catalog_items.
*/

Create table tops
(
    SKU             char(8),
    top_size        varchar2 (1) check(top_size in('S', 'M', 'L')),
    sleeve_length   varchar2 (5) check(sleeve_length in('Long', 'Short')),         
    neckline_type   varchar2(10),
    primary key     (SKU),
    foreign key     (SKU) references catalog_items (SKU)
);

/*
    Table: Shoes
    Desc: Stores shoe catalog info . 
    References: Catalog_items.
*/

Create table shoes
(
    SKU             char(8),
    shoe_size       decimal(3,1),
    shoe_type       varchar2(15),
    primary key     (SKU),
    foreign key     (SKU) references catalog_items (SKU)
);

/*
    Table: Line_Items
    Desc: Stores line item's quantity and price for an order from the catalog
    References: Order, Catalog.
*/

create table line_items
(
    ORDER_ID        char (6),
    SKU             char (6),
    quantity        integer,
    price           integer,
    primary key     (ORDER_ID, SKU),
    foreign key     (ORDER_ID) references orders(ORDER_ID),
    foreign key     (SKU)      references catalog_items(SKU)
);
