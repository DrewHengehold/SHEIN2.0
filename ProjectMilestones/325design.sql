/*

    Drew Hengehold, Cosette Basto, Jacqueline Lyons, Shyna Kumar, Forrest Reid, Soran Vardanega
    CS 325 - Fall 2023
    LAST MODIFIED DATE: 17-Nov-2023

    ---------------------------
    PROJECT DESIGN MILESTONE #2
    ---------------------------

*/

/*
    Drop all tables
*/

drop table User                 cascade constraints;
drop table Customer_Profile     cascade constraints;
drop table Line_Items           cascade constraints;
drop table Order                cascade constraints;
drop table Payment_Info         cascade constraints;
drop table Shipment             cascade constraints;
drop table Shipping             cascade constraints;
drop table Billing              cascade constraints;
drop table Address              cascade constraints;
drop table Catalog_Items        cascade constraints;
drop table Bottoms              cascade constraints;
drop table Tops                 cascade constraints;
drop table Shoes                cascade constraints;

/*
    Table: User
    Desc: Stores user web-profile information
*/

create table User
(
    USER_NAME       varchar2 (25),
    password        varchar2 (25),
    user_type       ENUM ('ADMIN', 'CUSTOMER'),
    primary key (USER_NAME)
);

/*
    Table: Customer_Profile
    Desc: Stores basic customer information and contact info
*/

create table Customer_Profile
(
    CUSTOMER_ID     char (6), 
    user_name       varchar2 (25), 
    card_name       varchar2 (25), 
    fname           varchar2 (25), 
    lname           varchar2 (25), 
    phone           char (10), 
    email           varchar2 (25),
    foreign key    (user_name) refrences User(USER_NAME),
    foreign key    (card_num) refrences Payment_Info(CARD_NUM)
);


/*
    Table: Payment_Info
    Desc: Holds user's card info and email for billing info to be sent to.
    References: Customer_Profile.
*/

create table Payment_Info
(
    CARD_NUM        char (16), 
    customer_id     char (6), 
    name_on_card    varchar2 (25) not null, 
    exp_date        varchar2 (25) not null, 
    billing_email   varchar2 (25),
    primary key     (CARD_NUM),
    foreign key     (customer_id)   references Customer_Profile (CUSTOMER_ID)
);



/*
    Table: Address
    Desc: Stores user's address info. 
*/

create table Address
(
    ADDRESS_ID      char(6),
    customer_id     char(6),
    street          char(6),
    city            varchar(25),
    us_state        char(6),
    zip             char(5),
    primary key     (ADDRESS_ID),
    foreign key     (customer_id) refrences Customer_Profile(CUSTOMER_ID)
);


/*
    Table: Shipping
    Desc: Tracks shipping instructions for a given address. 
    References: Address.
*/

create table Shipping
 (
    ADDRESS_ID      char (6),
    ship_instructions    varchar2 (45),
    primary key     (ADDRESS_ID),
    foreign key     (ADDRESS_ID)    references Address (ADDRESS_ID)

  );

/*
    Table: Billing
    Desc: Stores billing information. 
    References: Address, Payment_Info.
*/

create table Billing 
  (
    ADDRESS_ID      varchar2 (25),
    CARD_NUM        char (16),
    primary key     (ADDRESS_ID, CARD_NUM),
    foreign key     (ADDRESS_ID)    references Address(ADDRESS_ID),
    foreign key     (CARD_NUM)      references Payment_Info(CARD_NUM)
  );

/*
    Table: Order
    Desc: Tracks order's status and order date. 
    References: Customer_Profile.
*/

create table Order
(
    ORDER_ID        char (6),
    customer_id     char (6),
    order_total     number,
    order_states    ENUM ('PENDING', 'SHIPPED', 'INVOICED', 'RETURNED'),
    date_ordered    date,
    primary key     (ORDER_ID),
    foreign key     (customer_id)   references Customer_Profile (CUSTOMER_ID)
);

/*
    Table: Line_Items
    Desc: Stores line item's quantity and price for an order from the catalog
    References: Order, Catalog.
*/

create table Line_Items
(
    ORDER_ID        char (6),
    SKU             char (6),
    quantity        integer,
    price           integer,
    primary key     (ORDER_ID, SKU),
    foreign key     (ORDER_ID)      references Order (ORDER_ID),
    foreign key     (SKU)           references Catalog (SKU)
);

/*
    Table: Shipment
    Desc: Tracks shipment's status and delivery date. 
    References: Order, Shipment.
*/
create table Shipment
(
    SHIPMENT_ID     char (6), 
    address_id      char (6), 
    order_id        char (6), 
    ship_status     ENUM('PICK', 'PACK', 'SHIP'), 
    delivery_date   date,
    primary key     (SHIPMENT_ID),
    foreign key     (address_id)    references Shipping (ADDRESS_ID),
    foreign key     (order_id)      references Order (ORDER_ID)
);

/*
    Table: Catalog_Items
    Desc: Stores user's address info. 
*/

Create table Catalog_Items
(
    SKU             char(8),               
    item_name       varchar2(25),
    item_desc       varchar2(40),
    listed_price    decimal(5,2),
    avail_quantity  integer,
    gender          ENUM('W', 'M'),
    item-color      varchar2(10),
    primary key     (SKU)
);

/*
    Table: Bottoms
    Desc: Stores bottoms catalog info. 
    References: Catalog_Items.
*/

Create table Bottoms 
(
    waist_size      decimal(3,1),
    material        varchar2(15),
    SKU             char(8),
    primary key     (SKU),
    foreign key     (SKU) references Catalog_Items (SKU)
);

/*
    Table: Tops
    Desc: Stores tops catalog info. 
    References: Catalog_Items.
*/

Create table Tops
(
    top_size        ENUM('S', 'M', 'L'),
    sleeve_length   ENUM('Long', 'Short'),         
    SKU             char(8),
    neckline_type   varchar2(10),
    primary key     (SKU),
    foreign key     (SKU) references Catalog_Items (SKU)
);

/*
    Table: Shoes
    Desc: Stores shoe catalog info . 
    References: Catalog_Items.
*/

Create table Shoes
(
    shoe_size       decimal(3,1),
    shoe_type       varchar2(15),
    SKU             char(8),
    primary key     (SKU),
    foreign key     (SKU) references Catalog_Items (SKU)
);
