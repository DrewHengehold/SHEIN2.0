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
