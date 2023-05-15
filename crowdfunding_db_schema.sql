CREATE TABLE contacts (
contact_id INTEGER,
first_name VARCHAR,
last_name VARCHAR,
email VARCHAR,
PRIMARY KEY (contact_id)
);

CREATE TABLE category (
category_ids VARCHAR,
category VARCHAR,
PRIMARY KEY (category_ids)
);

CREATE TABLE subcategory (
subcategory_ids VARCHAR, 
subcategory VARCHAR,
PRIMARY KEY (subcategory_ids)
);

CREATE TABLE campaign (
cf_id INTEGER,
contact_id INTEGER,
company_name VARCHAR,
description VARCHAR,
goal NUMERIC(10,2),
pledged NUMERIC(10,2),
outcome VARCHAR,
backers_count INTEGER,
country VARCHAR,
currency VARCHAR,
launched_date TIMESTAMP,
end_date TIMESTAMP,
category_ids VARCHAR, 
subcategory_ids VARCHAR,
PRIMARY KEY (cf_id),
FOREIGN KEY(contact_id) REFERENCES contacts (contact_id),
FOREIGN KEY(category_ids) REFERENCES category (category_ids),
FOREIGN KEY(subcategory_ids) REFERENCES subcategory (subcategory_ids)
);

--check to see if tables were created correctly

SELECT * FROM campaign;

SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM contacts;

-- import data into the tables, then check to see if the data imported correctly


SELECT * FROM campaign;

SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM contacts;