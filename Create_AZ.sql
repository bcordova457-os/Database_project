CREATE TABLE Store(
store_id VARCHAR(4) NOT NULL,
address VARCHAR(50),
zip_code VARCHAR(12),
phone VARCHAR(10),
PRIMARY KEY(store_id)
);

CREATE TABLE Inventory(
item_num VARCHAR(10) NOT NULL,
sh_title VARCHAR(50),
description VARCHAR(50),
quantity NUMERIC(4,0) ,
unit NUMERIC (4,0),
avg_cost NUMERIC NOT NULL,
old_date DATE,
min_level NUMERIC NOT NULL,
shelf_code NUMERIC(4,0),
PRIMARY KEY(item_num)
);

CREATE TABLE Sales(
invoice_num VARCHAR(15) NOT NULL,
sale_date DATE,
item_num VARCHAR(10) NOT NULL,
quantity NUMERIC(4,0),
price NUMERIC NOT NULL,
note VARCHAR(50),
PRIMARY KEY(invoice_num),
FOREIGN KEY(item_num) REFERENCES Inventory(item_num)
);

CREATE TABLE Purchase(
pur_num NUMERIC(5,0) NOT NULL,
pur_date DATE,
item_num VARCHAR(10) NOT NULL,
quantity NUMERIC(4,0),
unit_cost NUMERIC NOT NULL,
note VARCHAR(50),
PRIMARY KEY(pur_num),
FOREIGN KEY(item_num) REFERENCES Inventory(item_num)
);

CREATE TABLE Account_payable(
sup_id NUMERIC NOT NULL,
balance NUMERIC NOT NULL,
PRIMARY KEY(sup_id)
);

CREATE TABLE Account_Receivable(
sup_id NUMERIC NOT NULL,
balance NUMERIC NOT NULL,
PRIMARY KEY(sup_id)
);

CREATE TABLE PurchasePaymentRecord(
sup_id NUMERIC NOT NULL,
pur_num NUMERIC NOT NULL,
pur_date DATE,
amount NUMERIC NOT NULL,
trans_type VARCHAR(30),
PRIMARY KEY (sup_id, pur_num),
FOREIGN KEY(sup_id) REFERENCES Account_payable(sup_id),
FOREIGN KEY(sup_id) REFERENCES Account_Receivable(sup_id),
FOREIGN KEY (pur_num) REFERENCES Purchase(pur_num)
);

CREATE TABLE Person(
per_id NUMERIC(8,0) NOT NULL,
firstname VARCHAR(30),
lastname VARCHAR(30),
address VARCHAR(70),
zip_code NUMERIC NOT NULL,
email VARCHAR(30),
gender VARCHAR(2),
phone VARCHAR(15) NOT NULL,
PRIMARY KEY (per_id)
);

CREATE TABLE Works(
	per_id NUMERIC(8,0),
	job_code VARCHAR(15),
	start_date DATE,
	end_date DATE,
	PRIMARY KEY(per_id, start_date),
	FOREIGN KEY (per_id) REFERENCES Person(per_id)
);

CREATE TABLE Skill(
sk_code VARCHAR(15) NOT NULL,
sk_title VARCHAR(50),
sk_description VARCHAR(50),
sk_level VARCHAR(20),
PRIMARY KEY(sk_code)
);

CREATE TABLE Has_Skill(
per_id NUMERIC(8,0) NOT NULL,
sk_code VARCHAR(15) NOT NULL,
PRIMARY KEY(per_id, sk_code),
FOREIGN KEY (sk_code) REFERENCES Skill(sk_code),
FOREIGN KEY (per_id) REFERENCES Person(per_id)
);

CREATE TABLE requires(
pos_code VARCHAR(15) NOT NULL,
sk_code VARCHAR(15) NOT NULL,
PRIMARY KEY(sk_code, pos_code),
FOREIGN KEY (sk_code) REFERENCES Skill(sk_code)
);

CREATE TABLE Positions(
pos_code VARCHAR(15) NOT NULL,
title VARCHAR(50),
description VARCHAR(50),
pay_range_high NUMERIC NOT NULL,
pay_range_low NUMERIC NOT NULL,
PRIMARY KEY(pos_code)
);

CREATE TABLE Job(
job_code VARCHAR(15) NOT NULL,
store_id VARCHAR(4) NOT NULL,
pos_code VARCHAR(15) NOT NULL,
emp_mode VARCHAR(50),
required_skill VARCHAR(50),
pay_rate NUMERIC(10,2),
pay_type VARCHAR(15),
cate_code NUMERIC(10,0) NOT NULL,
company VARCHAR(50),
PRIMARY KEY (job_code),
FOREIGN KEY (pos_code) REFERENCES Positions(pos_code),
FOREIGN KEY (store_id) REFERENCES Store(store_id)
);

CREATE TABLE Supplier(
comp_id NUMERIC(5,0) NOT NULL,
website VARCHAR(30),
contact_email VARCHAR(30),
PRIMARY KEY(comp_id)
);




