/* B,1-a Create Employee table */
CREATE TABLE employee
(
  employee_id INTEGER PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  hire_date DATE,
  job_title VARCHAR(30)
);

/* B,1-a Create Coffee Shop table */
CREATE TABLE coffee_shop
(
  shop_id INTEGER PRIMARY KEY,
  shop_name VARCHAR(50),
  city VARCHAR(50),
  state CHAR(2)
);

/* B,1-a Create Coffee table */
CREATE TABLE coffee
(
  coffee_id INTEGER PRIMARY KEY,
  coffee_name VARCHAR(30),
  price_per_pound NUMERIC(5,2)
);

/* B,1-a Create Supplier table */
CREATE TABLE supplier
(
  supplier_id INTEGER PRIMARY KEY,
  company_name VARCHAR(50),
  country VARCHAR(30),
  sales_contact_name VARCHAR(60),
  email VARCHAR(50) NOT NULL
);

/* Add shop_id FK in emplyee table */
ALTER TABLE employee
  ADD shop_id INTEGER,
  ADD FOREIGN KEY(shop_id) REFERENCES coffee_shop(shop_id);

/* Add shop_id and supplier_id FKs in  coffee table */
ALTER TABLE coffee
  ADD shop_id INTEGER,
  ADD supplier_id INTEGER,
  ADD FOREIGN KEY(shop_id) REFERENCES coffee_shop(shop_id),
  ADD FOREIGN KEY(supplier_id) REFERENCES supplier(supplier_id);

/* Insert sample data for employee table */
INSERT INTO employee(employee_id, first_name, last_name, hire_date, job_title)
VALUES(1, "John", "Smith", "2022-01-01", "Shift Leader"),
(2, "Joan", "Rivers", "2022-01-01", "Attendant"),
(3, "Patty", "Dorton", "2022-02-14", "Attendant"),
(4, "Lana", "Turner", "2022-05-09", "Attendant");

/* Insert sample data for Coffee Shop table */
INSERT INTO coffee_shop(shop_id, shop_name, city, state)
VALUES(1, "Jaunty Coffee Belleville", "Belleville", 'IL'),
(2, "Jaunty Coffee O'Fallon", "O'Fallon", 'IL'),
(3, "Jaunty Coffee East", "East St. Louis", 'IL');

/* Insert sample data for Coffee table */
INSERT INTO coffee(coffee_id, coffee_name, price_per_pound)
VALUES(1, "Fresh Start Breakfast Blend", 14.55),
(2, "Midnight in Paris French Roast", 12.99),
(3, "Secret Stash Pour", 16.42),
(4, "Chai Latte", 11.99),
(5, "Asian Light Roast", 13.99),
(6, "Hazelnut Medium Roast Blend", 14.99);

/* Insert sample data for Supplier table */
INSERT INTO supplier(supplier_id, company_name, country, sales_contact_name, email)
VALUES(1, "Elixir Coffee Roasters", "Australia", "Alessandra Moore", "amoore@elixircoffee.com.au"),
(2, "Joe's Garage Coffee", "United States", "Richard Kale", "richardkale@joesgaragecoffee.com"),
(3, "Rose Bank Coffee", "Australia", "Luana Ports", "portslu@rosebankcoffee.com.au");

/* Set shop_id for each employee */
UPDATE employee SET shop_id = 1 WHERE employee_id = 1;
UPDATE employee SET shop_id = 2 WHERE employee_id = 2;
UPDATE employee SET shop_id = 3 WHERE employee_id = 3;
UPDATE employee SET shop_id = 1 WHERE employee_id = 4;

/* Set shop and supplier id for each coffee */
UPDATE coffee SET shop_id = 1, supplier_id = 1 WHERE coffee_id = 6;
UPDATE coffee SET shop_id = 1, supplier_id = 2 WHERE coffee_id = 4;
UPDATE coffee SET shop_id = 1, supplier_id = 3 WHERE coffee_id = 1;
UPDATE coffee SET shop_id = 2, supplier_id = 1 WHERE coffee_id = 3;
UPDATE coffee SET shop_id = 2, supplier_id = 2 WHERE coffee_id = 5;
UPDATE coffee SET shop_id = 2, supplier_id = 3 WHERE coffee_id = 2;
UPDATE coffee SET shop_id = 3, supplier_id = 1 WHERE coffee_id = 3;
UPDATE coffee SET shop_id = 3, supplier_id = 2 WHERE coffee_id = 5;
UPDATE coffee SET shop_id = 3, supplier_id = 3 WHERE coffee_id = 1;


/* Create view to concatenate employee names */
CREATE VIEW full_names AS
SELECT CONCAT(first_name, ' ', last_name) AS employee_full_name, employee_id, hire_date, job_title, shop_id
FROM employee WHERE first_name IS NOT NULL AND last_name IS NOT NULL;

/* Create an index on the coffee_name field */
CREATE INDEX coffee_index ON coffee (coffee_name);

/* Create a SFW query for Coffee Shop table */
SELECT * FROM coffee_shop WHERE state = 'IL'

/* Create a query to join three tables and include all attributes */
SELECT * FROM employee
JOIN coffee_shop ON employee.shop_id = coffee_shop.shop_id
JOIN coffee ON coffee_shop.shop_id = coffee.shop_id