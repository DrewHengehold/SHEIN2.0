/*
Drew Hengehold, Cosette Basto, Jacqueline Lyons, Shyna Kumar, Forrest Reid, Soran Vardanega
CS 325 - Fall 2023
LAST MODIFIED DATE: 02-Nov-2023
*/

/* directions:
precede each SQL create table statement with a neat comment describing the table's purpose,
explaining any attribute whose meaning is not immediately clear from its name, and elaborating on the
domain of any attribute whose logical domain needs more description than is apparent from its physical
domain
*/

/*demo:
--This table tells us about the catalog
*/
create table user
(
    USER_NAME    varchar2 (25),
    password     varchar2 (45),
    user_type    
);

create table Customer_Profile
(
    CUSTOMER_ID    char (8), 
    user_name      varchar2 (25), 
    card_name      varchar2 (45), 
    fname          varchar2 (25), 
    lname          varchar2 (25), 
    phone          char (10), 
    email          varchar2 (25)     
);

create table Line_items(
    ORDER_ID  char(6),
    SKU       char(6),
    quantity  integer,
    price     integer,
    primary key(ORDER_ID),
    primary key(SKU),
    foreign key(ORDER_ID) refrences Order(ORDER_ID),
    foreign key(SKU) refrences Order(SKU)
);

create table Order(
    ORDER_ID    char(6),
    customer_id char(6),
    order_total integer,
    order_states ENUM('PENDING', 'SHIPPED', 'INVOICED', 'RETURNED'),
    date_ordered date,
    primary key (ORDER_ID),
    foreign key (customer_id) refrences Customer_Profile(customer_id)
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
    foreign key     (customer_id)   references Customer_Profile (customer_id)
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
    foreign key     (address_id)    references Shipping (address_id),
    foreign key     (order_id)      references Order (order_id)
);
