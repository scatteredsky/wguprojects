# C170

Code for creating the Jaunty Coffee tables:

```sql
/* B,1-a Create employee table */
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
```
