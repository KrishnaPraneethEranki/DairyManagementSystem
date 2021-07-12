CREATE TABLE signup (
    name VARCHAR(10),
    email VARCHAR(10),
    contact INT(10),
    address VARCHAR(10),
    acc VARCHAR(10),
    password VARCHAR(10) PRIMARY KEY
);



CREATE TABLE Login (
    login_id VARCHAR(10) NOT NULL,
    password VARCHAR(20),
    account_type VARCHAR(10),
    PRIMARY KEY (login_id)
);
insert into Login values(2001,'raju','farmer'); 
insert into Login values(2002,'ravi','farmer');
insert into Login values(2003,'rajesh','farmer');
insert into Login values(2004,'ramesh','farmer');
insert into Login values(2005,'rahul','farmer');
insert into Login values(2006,'rakesh','farmer');
insert into Login values(2007,'nanda','farmer');
insert into Login values(2008,'badri','farmer');
insert into Login values(2009,'bunny','farmer');
insert into Login values(2010,'ragava','farmer');
insert into Login values(3001,'balanagar','society');
insert into Login values(3002,'gandinagar','society');
insert into Login values(3003,'madhapur','society');
insert into Login values(3004,'palvancha','society');
insert into Login values(3005,'nandyala','society');
insert into Login values(4001,'Prapam','plant');
SELECT 
    *
FROM
    Login;
drop table customers;
CREATE TABLE Plant (
    p_id VARCHAR(10),
    street VARCHAR(20),
    email VARCHAR(20),
    p_quantity INT(10),
    login_id VARCHAR(10),
    PRIMARY KEY (p_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);
insert into Plant values (1004,'glokonda','prapammilk1234',200,4001);
SELECT 
    *
FROM
    Plant;

CREATE TABLE Plant_account (
    login_id VARCHAR(10) NOT NULL,
    password VARCHAR(20),
    account_type VARCHAR(10),
    PRIMARY KEY (login_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);
insert into Plant_account values(4001,'Prapam','plant');
SELECT 
    *
FROM
    Plant_account;

CREATE TABLE Plant_address (
    p_id VARCHAR(10),
    p_street_name VARCHAR(20),
    p_village_name VARCHAR(20),
    p_state VARCHAR(20),
    p_pincode INT(10),
    FOREIGN KEY (p_id)
        REFERENCES Plant (p_id)
);
insert into Plant_address values(1004,'golkonda','jagityal','telangana',507115);
SELECT 
    *
FROM
    Plant_address;

CREATE TABLE Plant_contact (
    p_id VARCHAR(10),
    p_phoneno INT(10),
    email VARCHAR(20),
    PRIMARY KEY (p_phoneno),
    FOREIGN KEY (p_id)
        REFERENCES Plant (p_id)
);
insert into Plant_contact values(1004,9542473887,'prapammilk1234');
SELECT 
    *
FROM
    Plant_contact;

CREATE TABLE Plant_area (
    p_id VARCHAR(10),
    p_pincode INT(10),
    PRIMARY KEY (p_id),
    FOREIGN KEY (p_id)
        REFERENCES Plant (p_id)
);
insert into Plant_area values(1004,507115);
SELECT 
    *
FROM
    plant_area;
    
CREATE TABLE Plant_mapping (
    p_id VARCHAR(10),
    login_id VARCHAR(10),
    PRIMARY KEY (p_id , login_id),
    FOREIGN KEY (p_id)
        REFERENCES Plant (p_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);
insert into Plant_mapping values(1004,4001);
SELECT 
    *
FROM
    Plant_mapping;

CREATE TABLE Society (
    s_id VARCHAR(10),
    p_id VARCHAR(10),
    s_name VARCHAR(20),
    s_quantity INT(10),
    login_id VARCHAR(10),
    PRIMARY KEY (s_id),
    FOREIGN KEY (p_id)
        REFERENCES Plant (p_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);
insert into Society values(1003,1004,'balanagar',12,3001);
insert into Society values(2003,1004,'gandhinagar',13,3002);
insert into Society values(3003,1004,'madhapur',14,3003);
insert into Society values(4003,1004,'palvancha',15,3004);
insert into Society values(5003,1004,'nandyala',16,3005);
SELECT 
    *
FROM
    Society;

CREATE TABLE Society_account (
    login_id VARCHAR(10) NOT NULL,
    password VARCHAR(20),
    account_type VARCHAR(10),
    PRIMARY KEY (login_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);
insert into Society_account values(3001,'balanagar','society');
insert into Society_account values(3002,'gandhinagar','society');
insert into Society_account values(3003,'madhapur','society');
insert into Society_account values(3004,'palvancha','society');
insert into Society_account values(3005,'nandyala','society');
SELECT 
    *
FROM
    Society_account;

CREATE TABLE Society_address (
    s_id VARCHAR(10),
    s_street_name VARCHAR(20),
    s_village_name VARCHAR(20),
    s_state VARCHAR(20),
    s_pincode INT(10),
    PRIMARY KEY (s_id),
    FOREIGN KEY (s_id)
        REFERENCES Society (s_id)
);
insert into Society_address values(1003,'sastry','balanagar','telangana',507115);
insert into Society_address values(2003,'ramalaya','gandhinagar','telangana',507116);
insert into Society_address values(3003,'alluri','madhapur','telangana',507117);
insert into Society_address values(4003,'natraj','palvancha','telangana',507118);
insert into Society_address values(5003,'rama','nandyala','telangana',507119);
SELECT 
    *
FROM
    society_address;

CREATE TABLE Society_contact (
    s_id VARCHAR(10),
    s_phoneno INT(20),
    PRIMARY KEY (s_phoneno),
    FOREIGN KEY (s_id)
        REFERENCES society (s_id)
);
insert into Society_contact values(1003,9542473867);
insert into Society_contact values(2003,9542473857);
insert into Society_contact values(3003,9542473847);
insert into Society_contact values(4003,9542433887);
insert into Society_contact values(5003,9542473887);
SELECT 
    *
FROM
    society_contact;


CREATE TABLE Society_area (
    s_id VARCHAR(10),
    s_pincode INT(10),
    PRIMARY KEY (s_id),
    FOREIGN KEY (s_id)
        REFERENCES Society (s_id)
);
insert into Society_area values(1003,507115);
insert into Society_area values(2003,507116);
insert into Society_area values(3003,507117);
insert into Society_area values(4003,507118);
insert into Society_area values(5003,507119);
SELECT 
    *
FROM
    Society_area;

CREATE TABLE Society_mapping (
    s_id VARCHAR(10),
    login_id VARCHAR(10),
    PRIMARY KEY (s_id , login_id),
    FOREIGN KEY (s_id)
        REFERENCES Society (s_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);
insert into Society_mapping values(1003,3001);
insert into Society_mapping values(2003,3002);
insert into Society_mapping values(3003,3003);
insert into Society_mapping values(4003,3004);
insert into Society_mapping values(5003,3005);
SELECT 
    *
FROM
    Society_mapping;

CREATE TABLE Farmer (
    f_id VARCHAR(10),
    f_name VARCHAR(20),
    s_id VARCHAR(10),
    f_quantity INT(10),
    login_id VARCHAR(10),
    PRIMARY KEY (f_id),
    FOREIGN KEY (s_id)
        REFERENCES Society (s_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);
insert into Farmer values(1002,'raju',1003,12,2001);
insert into Farmer values(1003,'ravi',1003,13,2002);
insert into Farmer values(1004,'rajesh',2003,14,2003);
insert into Farmer values(1005,'ramesh',2003,15,2004);
insert into Farmer values(1006,'rahul',3003,16,2005);
insert into Farmer values(1007,'rakesh',3003,17,2006);
insert into Farmer values(1008,'nanda',4003,18,2007);
insert into Farmer values(1009,'bhadri',4003,19,2008);
insert into Farmer values(1010,'bunny',5003,20,2009);
insert into Farmer values(1011,'ragava',5003,21,2010);
SELECT 
    *
FROM
    farmer;
    
CREATE TABLE Farmer_account (
    login_id VARCHAR(10) NOT NULL,
    password VARCHAR(20),
    account_type VARCHAR(10),
    PRIMARY KEY (login_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);
insert into Farmer_account values(2001,'raju','farmer'); 
insert into Farmer_account values(2002,'ravi','farmer');
insert into Farmer_account values(2003,'rajesh','farmer');
insert into Farmer_account values(2004,'ramesh','farmer');
insert into Farmer_account values(2005,'rahul','farmer');
insert into Farmer_account values(2006,'rakesh','farmer');
insert into Farmer_account values(2007,'nanda','farmer');
insert into Farmer_account values(2008,'badri','farmer');
insert into Farmer_account values(2009,'bunny','farmer');
insert into Farmer_account values(2010,'ragava','farmer');
SELECT 
    *
FROM
    farmer_account;

CREATE TABLE Farmer_address (
    f_id VARCHAR(10),
    f_street_name VARCHAR(20),
    f_village_name VARCHAR(20),
    f_state VARCHAR(20),
    f_pincode INT(10),
    FOREIGN KEY (f_id)
        REFERENCES Farmer (f_id)
);
insert into Farmer_address values(1002,'ramalaya','palvancha','telangana',507115);
insert into Farmer_address values(1003,'sastry','nandyala','telangana',507215);
insert into Farmer_address values(1004,'gandhi','jagityal','andhra',507315);
insert into Farmer_address values(1005,'sastry','palakollu','telangana',507415);
insert into Farmer_address values(1006,'natraj','paranapur','telangana',507515);
insert into Farmer_address values(1007,'alluri','bhadrachalam','andhra',507615);
insert into Farmer_address values(1008,'seetha','sarapaka','andhra',507715);
insert into Farmer_address values(1009,'raama','burgampadu','telangana',507185);
insert into Farmer_address values(1010,'raju','lakshmipuram','telanagan',507915);
insert into Farmer_address values(1011,'komaram','kavali','telangana',507105);
SELECT 
    *
FROM
    Farmer_address;

CREATE TABLE Farmer_contact (
    f_id VARCHAR(10),
    f_phoneno INT(10),
    PRIMARY KEY (f_phoneno),
    FOREIGN KEY (f_id)
        REFERENCES Farmer (f_id)
);
insert into Farmer_contact values(1002,8008192889);
insert into Farmer_contact values(1003,9008192889);
insert into Farmer_contact values(1004,8208192889);
insert into Farmer_contact values(1005,8048192889);
insert into Farmer_contact values(1006,8608192889);
insert into Farmer_contact values(1007,8008132889);
insert into Farmer_contact values(1008,8008492889);
insert into Farmer_contact values(1009,8568192889);
insert into Farmer_contact values(1010,8788192889);
insert into Farmer_contact values(1011,8018192889);
SELECT 
    *
FROM
    Farmer_contact;

CREATE TABLE Farmer_area (
    f_id VARCHAR(10),
    f_pincode INT(10),
    PRIMARY KEY (f_id),
    FOREIGN KEY (f_id)
        REFERENCES Farmer (f_id)
);
insert into Farmer_area values(1002,507115);
insert into Farmer_area values(1003,507215);
insert into Farmer_area values(1004,507315);
insert into Farmer_area values(1005,507415);
insert into Farmer_area values(1006,507515);
insert into Farmer_area values(1007,507615);
insert into Farmer_area values(1008,507715);
insert into Farmer_area values(1009,507815);
insert into Farmer_area values(1010,507915);
insert into Farmer_area values(1011,507105);
SELECT 
    *
FROM
    Farmer_area;

CREATE TABLE Farmer_mapping (
    f_id VARCHAR(10),
    login_id VARCHAR(10),
    PRIMARY KEY (f_id , login_id),
    FOREIGN KEY (f_id)
        REFERENCES Farmer (f_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);
insert into Farmer_mapping values(1002,2001);
insert into Farmer_mapping values(1003,2002);
insert into Farmer_mapping values(1004,2003);
insert into Farmer_mapping values(1005,2004);
insert into Farmer_mapping values(1006,2005);
insert into Farmer_mapping values(1007,2006);
insert into Farmer_mapping values(1008,2007);
insert into Farmer_mapping values(1009,2008);
insert into Farmer_mapping values(1010,2009);
insert into Farmer_mapping values(1011,2010);
SELECT 
    *
FROM
    Farmer_mapping;

CREATE TABLE Company (
    c_id VARCHAR(10) NOT NULL,
    c_quantity INT(10),
    login_id VARCHAR(10),
    PRIMARY KEY (c_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);
insert into Company values('C01',100,3001);
insert into Company values('C02',100,3002);
SELECT 
    *
FROM
    Company;
    
CREATE TABLE Company_account (
    login_id VARCHAR(10) NOT NULL,
    password VARCHAR(20),
    account_type VARCHAR(10),
    PRIMARY KEY (login_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);
insert into Company_account values (3001,18438,'company');
insert into Company_account values (3002,18439,'company');
SELECT 
    *
FROM
    Company_account;

CREATE TABLE Company_mapping (
    login_id VARCHAR(10) NOT NULL,
    c_id VARCHAR(10) NOT NULL,
    PRIMARY KEY (c_id , login_id),
    FOREIGN KEY (c_id)
        REFERENCES Company (c_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);
insert into Company_mapping values (3001,'C01');
insert into Company_mapping values (3002,'C02');
SELECT 
    *
FROM
    Company_mapping;

CREATE TABLE Price (
    dairydate DATE,
    fat_percent INT(10),
    amount_per_unit INT(10),
    PRIMARY KEY (fat_percent)
);
insert into Price values('2020-01-01',04,40);
insert into Price values('2020-01-02',02,30);
insert into Price values('2020-01-13',06,50);

SELECT 
    *
FROM
    Price;

CREATE TABLE Admin1 (
    admin_id VARCHAR(10),
    password VARCHAR(20),
    f_fat_percent INT(10),
    s_fat_percent INT(10),
    PRIMARY KEY (admin_id)
);
insert into Admin1  values('AD0001','18438',7.8,5.6);
SELECT 
    *
FROM
    Admin1;

CREATE TABLE Milk (
    dairydate DATE,
    quantity INT(10),
    login_id VARCHAR(10),
    PRIMARY KEY (dairydate),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);
insert into Milk values('2020-01-01',20,2001);
insert into Milk values('2020-01-13',22,3001);
insert into Milk values('2020-01-02',24,2002);
SELECT 
    *
FROM
    Milk;

CREATE TABLE Transportation (
    vehicle_no VARCHAR(10) NOT NULL,
    chasis_no INT(10),
    driver_name VARCHAR(20),
    PRIMARY KEY (vehicle_no)
);
insert into Transportation values('AP0718432',567,'anmol');
insert into Transportation values('AP0718438',678,'badshah');
insert into Transportation values('AP0718418',789,'aravind');
insert into Transportation values('AP0718419',890,'shaik');
insert into Transportation values('AP0718439',012,'chittibabu');
SELECT 
    *
FROM
    Transportation;
 
CREATE TABLE Transportation_vechicle (
    vehicle_no VARCHAR(20),
    route VARCHAR(10),
    route_id INT(10),
    PRIMARY KEY (route_id),
    FOREIGN KEY (vehicle_no)
        REFERENCES Transportation (vehicle_no)
);
insert into Transportation_vechicle values('AP0718438','karuchola',1);
insert into Transportation_vechicle values('AP0718432','jaladi',2);
insert into Transportation_vechicle values('AP0718418','edlapadu',3);
insert into Transportation_vechicle values('AP0718419','jaggapuram',4);
insert into Transportation_vechicle values('AP0718439','unnava',5);
SELECT 
    *
FROM
    Transportation_vechicle;
