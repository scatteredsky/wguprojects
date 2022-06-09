/* Tables for MySQL database */
CREATE TABLE `customer` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(25),
  `last_name` VARCHAR(35),
  `address1` VARCHAR(30),
  `address2` VARCHAR(35),
  `city` VARCHAR(50),
  `state` CHAR(2),
  `zip` CHAR(5),
  `mobile_phone` CHAR(10),
  PRIMARY KEY (`customer_id`)
);

CREATE TABLE `bagel_order` (
  `bagel_order_id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NULL,
  `order_date` TIMESTAMP,
  `delivery_fee` NUMERIC(4,2),
  `special_notes` VARCHAR(250),
  PRIMARY KEY (`bagel_order_id`),
  CONSTRAINT FK_bagel_order FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE `bagel` (
  `bagel_id` INT NOT NULL AUTO_INCREMENT,
  `bagel_name` VARCHAR(50),
  `bagel_description` VARCHAR(150),
  `bagel_price` NUMERIC(4,2),
  PRIMARY KEY (`bagel_id`)
);

CREATE TABLE `bagel_order_line_item` (
  `bagel_order_id` INT NOT NULL,
  `bagel_id` INT NOT NULL,
  `bagel_quantity` INT NOT NULL,
  PRIMARY KEY (`bagel_order_id`, `bagel_id`),
  CONSTRAINT FK_bagel_order_id FOREIGN KEY (`bagel_order_id`) REFERENCES `bagel_order`(`bagel_order_id`),
  CONSTRAINT FK_bagel_id FOREIGN KEY (`bagel_id`) REFERENCES `bagel`(`bagel_id`)
);