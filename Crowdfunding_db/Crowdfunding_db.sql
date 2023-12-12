-- crowdfunding_db_schema

-- Drop table if exists
DROP TABLE IF EXISTS contacts;

DROP TABLE IF EXISTS campaign;

DROP TABLE IF EXISTS category;

DROP TABLE IF EXISTS subcategory;


-- Create new tables to import data
CREATE TABLE campaign (
	cf_id INT,
	contact_id INT PRIMARY KEY,
	company_name VARCHAR,
	description  VARCHAR,
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR,
	backers_count FLOAT,
	country VARCHAR,
	currency VARCHAR,
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR,
	subcategory_id VARCHAR
);

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR,
	FOREIGN KEY (contact_id) REFERENCES campaign(contact_id)
);

CREATE TABLE category (
	category_id VARCHAR PRIMARY KEY,
	category VARCHAR
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR PRIMARY KEY,
	subcategory VARCHAR
);

-- Import data from campaign.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM campaign;

-- Import data from contacts.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM contacts;

-- Import data from category.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM category;

-- Import data from subcategory.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM subcategory;