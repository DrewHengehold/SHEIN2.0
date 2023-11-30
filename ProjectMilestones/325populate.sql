/*

    Drew Hengehold, Cosette Basto, Jacqueline Lyons, Shyna Kumar, Forrest Reid, Soran Vardanega
    CS 325 - Fall 2023
    LAST MODIFIED DATE: 30-Nov-2023

    ---------------------------
    PROJECT DESIGN MILESTONE #2
    ---------------------------

*/

insert into user
values(forrest_reid, ForestIsTheBest, 'ADMIN');

insert into user
values(drew_hengehold, DrewIsTheBest, 'ADMIN');

insert into user
values(cossette_bast, CossetteIsTheBest, 'ADMIN');

insert into user
values(shyna_kumar, ShynaIsTheBest, 'ADMIN');

insert into user
values(jacky_reid, JackyIsTheBest, 'ADMIN');

insert into user
values(soran_vardanega, SoranIsTheBest, 'ADMIN');

insert into user
values(john_doe, ZionNational, 'CUSTOMER');

insert into user
values(jane_smith, ILoveCats, 'CUSTOMER');

insert into user
values(bob_jones, ILoveDogs, 'CUSTOMER');

insert into user
values(micheal_brown, BrownBerkely, 'CUSTOMER');

insert into user
values(william_black, BlackChicago, 'CUSTOMER');

insert into user
values(lisa_jackson, JacksonNYC, 'CUSTOMER');

insert into user
values(ryan_taylor, Taylor13#, 'CUSTOMER');

insert into user
values(susan_white, WhiteTheColor, 'CUSTOMER');

insert into user
values(emily_green, GreenTheApple, 'CUSTOMER');

// Insert into customer profiles

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00001', 'john_doe', 'John', 'Doe', '1234567890', 'john.doe@email.com');

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00002', 'jane_smith', 'Jane', 'Smith', '9876543210', 'jane.smith@email.com');

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00003', 'bob_jones', 'Bob', 'Jones', '5556667777', 'bob.jones@email.com');

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00004', 'susan_white', 'Susan', 'White', '1112223333', 'susan.white@email.com');

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00005', 'michael_brown', 'Michael', 'Brown', '9998887777', 'michael.brown@email.com');

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00006', 'emily_green', 'Emily', 'Green', '4445556666', 'emily.green@email.com');

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00007', 'william_black', 'William', 'Black', '7778889999', 'william.black@email.com');

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00008', 'lisa_jackson', 'Lisa', 'Jackson', '3332221111', 'lisa.jackson@email.com');

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00009', 'ryan_taylor', 'Ryan', 'Taylor', '5554443333', 'ryan.taylor@email.com');

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00010', 'soran_vardanega', 'Soran', 'Vardanega', '6667778888', 'soran.vardanega@email.com');

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00011', 'shyna_kumar', 'Shyna', 'Kumar', '9990001111', 'shyna.kumar@email.com');

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00012', 'jacky_lyons', 'Jacky', 'Lyons', '1110002222', 'jacky.lyons@email.com');

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00013', 'drew_hengehold', 'Drew', 'Hengehold', '8887776666', 'drew.hengehold@email.com');

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00014', 'cosette_basto', 'Cosette', 'Basto', '2223334444', 'cosette.basto@email.com');

INSERT INTO Customer_Profile (CUSTOMER_ID, user_name, fname, lname, phone, email)
VALUES ('C00015', 'forrest_reid', 'Forrest', 'Reid', '4443332222', 'forrest.reid@email.com');
