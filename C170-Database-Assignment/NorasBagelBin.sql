CREATE TABLE bagel_order (
   bagel_order_id  INT,
   customer_id  INT,
   order_date  TIMESTAMP,
   delivery_fee  NUMERIC(4,2),
   special_notes  VARCHAR(250),
  PRIMARY KEY ( bagel_order_id )
);

CREATE TABLE bagel_order_line_item (
   bagel_order_id  INT,
   bagel_id  CHAR(2),
   bagel_quantity  Type,
  FOREIGN KEY ( bagel_order_id ) REFERENCES  bagel_order ( customer_id ),
  KEY  PK/FK  ( bagel_order_id ,  bagel_id )
);

CREATE TABLE bagel (
   bagel_id  CHAR(2),
   bagel_name  VARCHAR(50),
   bagel_description  VARCHAR(150),
   bagel_price  NUMERIC(4,2),
  PRIMARY KEY ( bagel_id ),
  FOREIGN KEY ( bagel_name ) REFERENCES  bagel_order_line_item ( bagel_order_id )
);

CREATE TABLE customer (
   customer_id  INT,
   first_name  VARCHAR(25),
   last_name  VARCHAR(35),
   address1  VARCHAR(30),
   address2  VARCHAR(35),
   city  VARCHAR(50),
   state  CHAR(2),
   zip  CHAR(5),
   mobile_phone  CHAR(10),
  PRIMARY KEY ( customer_id )
);

