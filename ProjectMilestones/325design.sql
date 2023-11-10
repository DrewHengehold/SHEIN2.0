/*

    Drew Hengehold, Cosette Basto, Jacqueline Lyons, Shyna Kumar, Forrest Reid, Soran Vardanega
    CS 325 - Fall 2023
    LAST MODIFIED DATE: 10-Nov-2023

    ---------------------------
    PROJECT DESIGN MILESTONE #2
    ---------------------------

*/

/*
    Drop all tables
*/

drop table User;
drop table Customer_Profile;
drop table Line_Items;
drop table Order;
drop table Payment_Info;
drop table Shipment;
drop table Shipping;
drop table Billing;

/*
    Table: User
    Desc: Stores user web-profile information
*/

create table User
(
    USER_NAME       varchar2 (25),
    password        varchar2 (25),
    user_type       ENUM ('ADMIN', 'CUSTOMER')
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
    email           varchar2 (25)     
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
    Table: Shipping
    Desc: Tracks shipping instructions for a given address. 
    References: Address.
*/

create table Shipping
 (
    ADDRESS_ID      char (6),
    instructions    varchar2 (45),
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
    foreign key     (ADDRESS_ID)    references Address (ADDRESS_ID),
    foreign key     (CARD_NUM)      references Payment_Info(CARD_NUM)
  );
