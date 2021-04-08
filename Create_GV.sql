CREATE TABLE Company 
(
	comp_id NUMERIC,
	address VARCHAR(40),
	zip_code NUMERIC,
	industry_group VARCHAR(40),
	website VARCHAR(40),
	PRIMARY KEY(comp_id)
);

CREATE TABLE Customer
(
	comp_id NUMERIC, 
	contact_person VARCHAR(40),
	contact_email VARCHAR(40),
	PRIMARY KEY(comp_id),  
	FOREIGN KEY(comp_id) REFERENCES Company(comp_id)
);


CREATE TABLE Supplier
(
	comp_id NUMERIC, 
	website VARCHAR(40),
	contact_email VARCHAR(40),
	PRIMARY KEY(comp_id), 
	FOREIGN KEY(comp_id) REFERENCES Company(comp_id)
);

CREATE TABLE Course
(
	c_code NUMERIC,  
	title VARCHAR(40),
	lvl VARCHAR(40), 
	description VARCHAR(400),
	status VARCHAR(40),
	retail_price NUMERIC, 
	PRIMARY KEY(c_code)
 );
	
CREATE TABLE Sections 
(
	c_code NUMERIC,
	sec_no NUMERIC,
	complete_date VARCHAR(40),
	the_year NUMERIC,
	offered_by VARCHAR(40),
	format VARCHAR(40),
	price NUMERIC,
	PRIMARY KEY(c_code, sec_no, the_year),
	FOREIGN KEY(c_code) REFERENCES Course(c_code)
 );

CREATE TABLE offers 
(
	comp_id NUMERIC, 
	c_code NUMERIC, 
	sec_no NUMERIC, 
	the_year NUMERIC, 
	PRIMARY KEY (comp_id, c_code, sec_no, the_year),
	FOREIGN KEY (comp_id) REFERENCES Company(comp_id), 
	FOREIGN KEY (c_code, sec_no, the_year) REFERENCES Sections(c_code, sec_no, the_year)

); 

CREATE TABLE Person
( 
	per_id NUMERIC,
	first_name VARCHAR(40),
	last_name VARCHAR(40), 
	address VARCHAR(40),
	zip_code NUMERIC,
	email VARCHAR(40),
	gender VARCHAR(40),
	phone NUMERIC,
	PRIMARY KEY(per_id)
);

CREATE TABLE takes 
(
	per_id NUMERIC, 
	c_code NUMERIC, 
	sec_no NUMERIC, 
	the_year NUMERIC,
	PRIMARY KEY(per_id, c_code, sec_no, the_year), 
	FOREIGN KEY (c_code, sec_no, the_year) REFERENCES Sections(c_code, sec_no, the_year),
	FOREIGN KEY (per_id) REFERENCES Person(per_id)
	
); 


CREATE TABLE Factory 
(
	fac_id NUMERIC,
	fac_name VARCHAR(40),
	address VARCHAR(40),
	zip_code NUMERIC, 
	phone NUMERIC, 
	manager VARCHAR(40), 
	PRIMARY KEY(fac_id)
);

CREATE TABLE Pos 
(
	pos_code VARCHAR(40), 
	title VARCHAR(40),
	description VARCHAR(200),
	pay_range_high NUMERIC,
	pay_range_low NUMERIC, 
	PRIMARY KEY(pos_code)
	
);


CREATE TABLE Job 
(
	job_code VARCHAR(40),
	emp_mode VARCHAR(40),
	pay_rate NUMERIC,
	pay_type VARCHAR(40),
	fac_id NUMERIC,
	pos_code VARCHAR(40), 
	per_id NUMERIC,
	PRIMARY KEY(job_code),
	FOREIGN KEY (fac_id) REFERENCES Factory(fac_id),
	FOREIGN KEY (pos_code) REFERENCES Pos(pos_code),
	FOREIGN KEY (per_id) REFERENCES Person(per_id)

);


CREATE TABLE Product 
(
	p_code NUMERIC,
	p_name VARCHAR(40),
	description VARCHAR(40),
	quantity NUMERIC, 
	unit NUMERIC,
	avg_cost NUMERIC , 
	PRIMARY KEY(p_code)
);

CREATE TABLE makes 
(
	fac_id NUMERIC, 
	p_code NUMERIC, 
	quantity NUMERIC, 
	PRIMARY KEY(fac_id, p_code), 
	FOREIGN KEY (fac_id) REFERENCES Factory(fac_id),
	FOREIGN KEY (p_code) REFERENCES Product(p_code)
); 

CREATE TABLE Prerequisite 
(
	c_id NUMERIC, 
	pre_id NUMERIC,
	PRIMARY KEY (c_id, pre_id),
	FOREIGN KEY (c_id) REFERENCES Course(c_code),
	FOREIGN KEY (pre_id) REFERENCES Course(c_code)
);
 

CREATE TABLE Skill 
(
	sk_code NUMERIC, 
	title VARCHAR(40),
	description VARCHAR(400),
	lvl VARCHAR(40), 
	PRIMARY KEY(sk_code)
);

CREATE TABLE teaches 
(
	c_code NUMERIC, 
	sk_code NUMERIC, 
	PRIMARY KEY(c_code, sk_code), 
	FOREIGN KEY(c_code) REFERENCES Course(c_code), 
	FOREIGN KEY(sk_code) REFERENCES Skill(sk_code)

); 


CREATE TABLE requires 
(
	sk_code NUMERIC, 
	pos_code VARCHAR(40), 
	PRIMARY KEY(sk_code, pos_code), 
	FOREIGN KEY(sk_code) REFERENCES Skill(sk_code), 
	FOREIGN KEY(pos_code) REFERENCES Pos(pos_code)
); 
 

CREATE TABLE req_by_job 
(
	job_code VARCHAR(40),
	sk_code NUMERIC, 
	PRIMARY KEY(job_code, sk_code),
	FOREIGN KEY(job_code) REFERENCES Job(job_code), 
	FOREIGN KEY(sk_code) REFERENCES Skill(sk_code)
); 

CREATE TABLE Has_Skill 
(
	per_id NUMERIC, 
	sk_code NUMERIC, 
	PRIMARY KEY(per_id, sk_code), 
	FOREIGN KEY(per_id) REFERENCES Person(per_id), 
	FOREIGN KEY(sk_code) REFERENCES Skill(sk_code)
); 

CREATE TABLE Purchase 
(
	purchase_num NUMERIC, 
	acc_num NUMERIC, 
	sup_order_num NUMERIC, 
	purhcase_amount NUMERIC,
	book_date date,
	pay_date date,
	note VARCHAR(40), 
	PRIMARY KEY(purchase_num)
);

CREATE TABLE ordr 
(
	purchase_num NUMERIC, 
	comp_id NUMERIC, 
	PRIMARY KEY(purchase_num, comp_id),
	FOREIGN KEY(purchase_num) REFERENCES Purchase(purchase_num), 
	FOREIGN KEY(comp_id) REFERENCES Supplier(comp_id)

);

CREATE TABLE Material 
(
	m_code NUMERIC, 
	m_name VARCHAR(40),
	quantity NUMERIC, 
	unit NUMERIC, 
	min_level NUMERIC, 
	PRIMARY KEY(m_code)
);

CREATE TABLE PurchaseLine 
(
	purchase_num NUMERIC, 
	m_code NUMERIC, 
	quantity NUMERIC, 
	PRIMARY KEY(purchase_num, m_code),
	FOREIGN KEY(purchase_num) REFERENCES Purchase(purchase_num), 
	FOREIGN KEY(m_code) REFERENCES Material(m_code)
	
); 

CREATE TABLE uses 
(
	m_code NUMERIC, 
	p_code NUMERIC, 
	quantity NUMERIC, 
	PRIMARY KEY(m_code, p_code),
	FOREIGN KEY(m_code) REFERENCES Material(m_code), 
	FOREIGN KEY(p_code) REFERENCES Product(p_code)
); 

CREATE TABLE Contract 
(
	contract_id NUMERIC, 
	cus_id NUMERIC, 
	the_date VARCHAR(40),
	sale_amount NUMERIC, 
	pay_schedule VARCHAR(40), 
	PRIMARY KEY(contract_id),
	FOREIGN KEY(cus_id) REFERENCES Customer(comp_id)
);

CREATE TABLE LineItem 
(
	contract_id NUMERIC, 
	p_code NUMERIC, 
	quantity NUMERIC, 
	PRIMARY KEY(contract_id, p_code),  
	FOREIGN KEY(contract_id) REFERENCES Contract(contract_id),
	FOREIGN KEY(p_code) REFERENCES Product(p_code)

);