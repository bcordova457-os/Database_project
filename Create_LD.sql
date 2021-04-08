CREATE TABLE "Course" 
(
    "c_code" NUMBER, 
    "title" VARCHAR2(40), 
    "lvl" VARCHAR2(40), 
    "description" VARCHAR2(400), 
    "status" VARCHAR2(40), 
    "retail_price" NUMBER, 
    PRIMARY KEY ("c_code")
);


CREATE TABLE "GICS" 
(
    "ind_id" NUMBER, 
    "ind_title" VARCHAR2(30), 
    "level" VARCHAR2(50), 
    "description" VARCHAR2(100), 
    "parent_id" NUMBER, 
    PRIMARY KEY ("ind_id")
);



CREATE TABLE "Person" 
(	
    "per_id" NUMBER, 
	"first_name" VARCHAR2(40), 
	"last_name" VARCHAR2(40), 
	"address" VARCHAR2(40), 
	"zip_code" NUMBER, 
	"email" VARCHAR2(40), 
	"gender" VARCHAR2(40), 
	"phone" NUMBER, 
	PRIMARY KEY ("per_id")
);



CREATE TABLE "Pos" 
(	
    "pos_code" VARCHAR2(40), 
    "title" VARCHAR2(40), 
    "description" VARCHAR2(200), 
    "pay_range_high" NUMBER, 
    "pay_range_low" NUMBER, 
    PRIMARY KEY ("pos_code")
);



CREATE TABLE "Skill" 
(	
    "sk_code" NUMBER, 
    "title" VARCHAR2(40), 
    "description" VARCHAR2(400), 
    "lvl" VARCHAR2(40), 
    PRIMARY KEY ("sk_code")
);



CREATE TABLE "Company" 
(	
	"comp_id" NUMBER, 
	"address" VARCHAR2(40), 
	"zip_code" NUMBER, 
	"industry_group" NUMBER(38,0), 
	"website" VARCHAR2(40), 
	"name" VARCHAR2(100), 
	PRIMARY KEY ("comp_id"),
	FOREIGN KEY ("industry_group") REFERENCES "GICS" ("ind_id") 
);


CREATE TABLE "Has_Skill" 
(	
	"per_id" NUMBER, 
	"sk_code" NUMBER, 
	PRIMARY KEY ("per_id", "sk_code"),
	FOREIGN KEY ("per_id") REFERENCES "Person" ("per_id"),
	FOREIGN KEY ("sk_code") REFERENCES "Skill" ("sk_code") 
);



CREATE TABLE "Job" 
(	
	"job_code" VARCHAR2(40), 
	"emp_mode" VARCHAR2(40), 
	"pay_rate" NUMBER, 
	"pay_type" VARCHAR2(40), 
	"pos_code" VARCHAR2(40), 
	"comp_id" NUMBER(38,0), 
	PRIMARY KEY ("job_code"),
	FOREIGN KEY ("pos_code") REFERENCES "Pos" ("pos_code"),  
	FOREIGN KEY ("comp_id") REFERENCES "Company" ("comp_id") 
);


CREATE TABLE "Prerequisite" 
(	
	"c_id" NUMBER, 
	"pre_id" NUMBER, 
	PRIMARY KEY ("c_id", "pre_id"),
	FOREIGN KEY ("c_id") REFERENCES "Course" ("c_code"), 
	FOREIGN KEY ("pre_id") REFERENCES "Course" ("c_code") 
);



CREATE TABLE "Sections" 
(
	"c_code" NUMBER, 
	"sec_no" NUMBER, 
	"complete_date" VARCHAR2(40), 
	"the_year" NUMBER, 
	"offered_by" VARCHAR2(40), 
	"format" VARCHAR2(40), 
	"price" NUMBER, 
	PRIMARY KEY ("c_code", "sec_no", "the_year"),
	FOREIGN KEY ("c_code") REFERENCES "Course" ("c_code")
);




CREATE TABLE "TAKES" 
(	
	"per_id" NUMBER, 
	"c_code" NUMBER, 
	"sec_no" NUMBER, 
	"the_year" NUMBER, 
	PRIMARY KEY ("per_id", "c_code", "sec_no", "the_year"),
	FOREIGN KEY ("c_code", "sec_no", "the_year") REFERENCES "Sections" ("c_code", "sec_no", "the_year"),
	FOREIGN KEY ("per_id") REFERENCES "Person" ("per_id") 
); 




CREATE TABLE "req_by_job" 
(	
	"job_code" VARCHAR2(40), 
	"sk_code" NUMBER, 
	PRIMARY KEY ("job_code", "sk_code"),  
	FOREIGN KEY ("job_code") REFERENCES "Job" ("job_code"), 
	FOREIGN KEY ("sk_code") REFERENCES "Skill" ("sk_code") 
);



CREATE TABLE "requires" 
(	
	"sk_code" NUMBER, 
	"pos_code" VARCHAR2(40), 
	PRIMARY KEY ("sk_code", "pos_code"),
	FOREIGN KEY ("sk_code") REFERENCES "Skill" ("sk_code"),
	FOREIGN KEY ("pos_code") REFERENCES "Pos" ("pos_code") 
); 



CREATE TABLE "teaches" 
(	
	"c_code" NUMBER, 
	"sk_code" NUMBER, 
	PRIMARY KEY ("c_code", "sk_code"),
	FOREIGN KEY ("c_code") REFERENCES "Course" ("c_code"), 
	FOREIGN KEY ("sk_code") REFERENCES "Skill" ("sk_code") 
);



CREATE TABLE "works" 
(	
	"per_id" NUMBER, 
	"job_code" VARCHAR2(40), 
	"start_date" DATE, 
	"end_date" DATE, 
	CHECK (not ("end_date" < "start_date")),
	PRIMARY KEY ("per_id", "job_code", "start_date"), 
	FOREIGN KEY ("per_id") REFERENCES "Person" ("per_id"), 
	FOREIGN KEY ("job_code") REFERENCES "Job" ("job_code")
); 


CREATE TABLE "COMP_SUB_INDUS" 
(	
	"comp_id" NUMBER(38,0), 
	"ind_id" NUMBER, 
	PRIMARY KEY ("comp_id", "ind_id"),
	FOREIGN KEY ("comp_id") REFERENCES "Company" ("comp_id"), 
	FOREIGN KEY ("ind_id") REFERENCES "GICS" ("ind_id") 
);