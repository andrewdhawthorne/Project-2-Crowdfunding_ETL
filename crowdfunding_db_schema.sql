-- Create category table and import csv file
CREATE TABLE category (
	category_id VARCHAR(255) PRIMARY KEY,
	category CHAR(255)
);

-- Query all fields from the table
SELECT * FROM category;

-- Create subcategory table and import csv file
CREATE TABLE subcategory (
	subcategory_id VARCHAR(255) PRIMARY KEY,
	subcategory CHAR(255)
);

-- Query all fields from the table
SELECT * FROM subcategory;

-- Create contacts table and impport csv file
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name CHAR(255),
	last_name CHAR(255),
	email VARCHAR(255)
);

-- Query all fields from the table
SELECT * FROM contacts;

-- Create campaign table and import csv file
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	company_name VARCHAR(255),
	description VARCHAR(255),
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(255),
	backers_count INT,
	country VARCHAR(255),
	currency VARCHAR(255),
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR(255),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	subcategory_id VARCHAR(255),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

-- Query all fields from the table
SELECT * FROM campaign;
