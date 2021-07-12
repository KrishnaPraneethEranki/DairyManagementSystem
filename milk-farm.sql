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
CREATE TABLE Plant_account (
    login_id VARCHAR(10) NOT NULL,
    password VARCHAR(20),
    account_type VARCHAR(10),
    PRIMARY KEY (login_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);
CREATE TABLE Plant_address (
    p_id VARCHAR(10),
    p_street_name VARCHAR(20),
    p_village_name VARCHAR(20),
    p_state VARCHAR(20),
    p_pincode INT(10),
    FOREIGN KEY (p_id)
        REFERENCES Plant (p_id)
);
CREATE TABLE Plant_contact (
    p_id VARCHAR(10),
    p_phoneno INT(10),
    email VARCHAR(20),
    PRIMARY KEY (p_phoneno),
    FOREIGN KEY (p_id)
        REFERENCES Plant (p_id)
);
CREATE TABLE Plant_area (
    p_id VARCHAR(10),
    p_pincode INT(10),
    PRIMARY KEY (p_id),
    FOREIGN KEY (p_id)
        REFERENCES Plant (p_id)
);  
CREATE TABLE Plant_mapping (
    p_id VARCHAR(10),
    login_id VARCHAR(10),
    PRIMARY KEY (p_id , login_id),
    FOREIGN KEY (p_id)
        REFERENCES Plant (p_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);

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

CREATE TABLE Society_account (
    login_id VARCHAR(10) NOT NULL,
    password VARCHAR(20),
    account_type VARCHAR(10),
    PRIMARY KEY (login_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);


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


CREATE TABLE Society_contact (
    s_id VARCHAR(10),
    s_phoneno INT(20),
    PRIMARY KEY (s_phoneno),
    FOREIGN KEY (s_id)
        REFERENCES society (s_id)
);


CREATE TABLE Society_area (
    s_id VARCHAR(10),
    s_pincode INT(10),
    PRIMARY KEY (s_id),
    FOREIGN KEY (s_id)
        REFERENCES Society (s_id)
);


CREATE TABLE Society_mapping (
    s_id VARCHAR(10),
    login_id VARCHAR(10),
    PRIMARY KEY (s_id , login_id),
    FOREIGN KEY (s_id)
        REFERENCES Society (s_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);


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

CREATE TABLE Farmer_account (
    login_id VARCHAR(10) NOT NULL,
    password VARCHAR(20),
    account_type VARCHAR(10),
    PRIMARY KEY (login_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);


CREATE TABLE Farmer_address (
    f_id VARCHAR(10),
    f_street_name VARCHAR(20),
    f_village_name VARCHAR(20),
    f_state VARCHAR(20),
    f_pincode INT(10),
    FOREIGN KEY (f_id)
        REFERENCES Farmer (f_id)
);


CREATE TABLE Farmer_contact (
    f_id VARCHAR(10),
    f_phoneno INT(10),
    PRIMARY KEY (f_phoneno),
    FOREIGN KEY (f_id)
        REFERENCES Farmer (f_id)
);


CREATE TABLE Farmer_area (
    f_id VARCHAR(10),
    f_pincode INT(10),
    PRIMARY KEY (f_id),
    FOREIGN KEY (f_id)
        REFERENCES Farmer (f_id)
);


CREATE TABLE Farmer_mapping (
    f_id VARCHAR(10),
    login_id VARCHAR(10),
    PRIMARY KEY (f_id , login_id),
    FOREIGN KEY (f_id)
        REFERENCES Farmer (f_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);


CREATE TABLE Company (
    c_id VARCHAR(10) NOT NULL,
    c_quantity INT(10),
    login_id VARCHAR(10),
    PRIMARY KEY (c_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);

    
CREATE TABLE Company_account (
    login_id VARCHAR(10) NOT NULL,
    password VARCHAR(20),
    account_type VARCHAR(10),
    PRIMARY KEY (login_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);


CREATE TABLE Company_mapping (
    login_id VARCHAR(10) NOT NULL,
    c_id VARCHAR(10) NOT NULL,
    PRIMARY KEY (c_id , login_id),
    FOREIGN KEY (c_id)
        REFERENCES Company (c_id),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);

CREATE TABLE Price (
    dairydate DATE,
    fat_percent INT(10),
    amount_per_unit INT(10),
    PRIMARY KEY (fat_percent)
);


CREATE TABLE Admin1 (
    admin_id VARCHAR(10),
    password VARCHAR(20),
    f_fat_percent INT(10),
    s_fat_percent INT(10),
    PRIMARY KEY (admin_id)
);


CREATE TABLE Milk (
    dairydate DATE,
    quantity INT(10),
    login_id VARCHAR(10),
    PRIMARY KEY (dairydate),
    FOREIGN KEY (login_id)
        REFERENCES Login (login_id)
);


CREATE TABLE Transportation (
    vehicle_no VARCHAR(10) NOT NULL,
    chasis_no INT(10),
    driver_name VARCHAR(20),
    PRIMARY KEY (vehicle_no)
);

 
CREATE TABLE Transportation_vechicle (
    vehicle_no VARCHAR(20),
    route VARCHAR(10),
    route_id INT(10),
    PRIMARY KEY (route_id),
    FOREIGN KEY (vehicle_no)
        REFERENCES Transportation (vehicle_no)
);

