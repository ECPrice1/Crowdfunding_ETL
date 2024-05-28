CREATE DATABASE crowdfunding_db;

CREATE TABLE Contacts(
	contact_id INT,
	first_name varchar(200) NOT NULL,
	last_name varchar(200) NOT NULL,
	email varchar(200) NOT NULL,
	PRIMARY KEY (contact_id)) ;

CREATE TABLE Category(
	category_id varchar(5),
	category varchar(200) NOT NULL,
	PRIMARY KEY (category_id));

CREATE TABLE Sub_Category(
	subcategory_id varchar(10),
	subcategory varchar(200) NOT NULL,
	PRIMARY KEY (subcategory_id));

CREATE TABLE Campaign(
	cf_id int, 
	contact_id int NOT NULL,
	company_name varchar(200) NOT NULL,
	description varchar(200) NOT NULL,
	goal numeric NOT NULL,
	pledged numeric NOT NULL,
	outcome varchar(200) NOT NULL,
	backers_count int NOT NULL,
	country varchar(200) NOT NULL,
	currency varchar(200) NOT NULL,
	launch_date date NOT NULL,
	end_date date NOT NULL,
	category_id varchar(5) NOT NULL,
	subcategory_id varchar(10) NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Sub_Category(subcategory_id));

