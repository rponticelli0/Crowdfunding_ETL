DROP TABLE IF EXISTS category CASCADE;
CREATE TABLE category (
    category_id VARCHAR(40) NOT NULL, 
    category VARCHAR(40) NOT NULL
);

DROP TABLE IF EXISTS subcategory CASCADE;
CREATE TABLE subcategory (
    subcategory_id VARCHAR(40) NOT NULL, 
    subcategory VARCHAR(40) NOT NULL
);

DROP TABLE IF EXISTS contacts CASCADE;
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY, 
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    email VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS campaign CASCADE;
CREATE TABLE campaign (
    cf_id INT,
    contact_id INT,
    company_name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    goal DECIMAL(10, 2),
    pledged DECIMAL(10, 2),
    outcome VARCHAR(40) NOT NULL,
    backers_count INT,
    country CHAR(2) NOT NULL,
    currency CHAR(3) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    subcategory_id VARCHAR(40) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);