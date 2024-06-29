CREATE TABLE contacts (
  contact_id int NOT NULL,
  first_name varchar(20),
  last_name varchar(20),
  email varchar(50),
  PRIMARY KEY (contact_id)
);

CREATE TABLE category (
  category_id varchar(5) NOT NULL,
  category varchar(20),
  PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
  subcategory_id varchar(10) NOT NULL,
  subcategory varchar(20),
  PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign (
  cf_id varchar NOT NULL,
  contact_id int NOT NULL,
  company_name varchar(50),
  description varchar(100),
  goal float,
  pledged float,
  outcome varchar(10),
  backers_count int,
  country varchar(2),
  currency varchar(3),
  launch_date date,
  end_date date,
  category_id varchar(5) NOT NULL,
  subcategory_id varchar(10) NOT NULL,
  FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
  FOREIGN KEY (category_id) REFERENCES category(category_id),
  FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);