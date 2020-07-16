/* This SQL script is to create Kmart database */
DROP DATABASE IF EXISTS kart;
CREATE DATABASE kart;
USE kart;

/* Drop all tables before creating tables*/
DROP TABLE IF EXISTS  customer, current_order, order_history, 
					  order_item, payment, order_review, seller,  
                      login , user_session ,product;



/* Create all Kmart Database Tables (10)   */

/* customer entity table */
CREATE TABLE customer
	(customer_id BIGINT(11) NOT NULL AUTO_INCREMENT,
	 customer_firstname VARCHAR(10) NOT NULL,
	 customer_lastname VARCHAR(10) NOT NULL,
     customer_streetname VARCHAR(45) NOT NULL,              
	 customer_city VARCHAR(20) NOT NULL,
	 customer_zip_code INT(6) NOT NULL,
	 customer_state CHAR(2) NOT NULL,
CONSTRAINT customer_pk PRIMARY KEY (customer_id));

/* current_order entity table */
CREATE TABLE current_order
	(current_order_id BIGINT(12) NOT NULL AUTO_INCREMENT,
     customer_id BIGINT(11) NULL DEFAULT NULL,
	 current_order_status CHAR(1) NOT NULL,
	 current_order_purchase_date DATE NOT NULL,
	 current_order_approved_at DATETIME NOT NULL,
	 current_order_delivered_carrier_date DATE NULL DEFAULT NULL,
	 current_order_estimated_delivery_date DATE NULL DEFAULT NULL,
CONSTRAINT current_order_id_pk PRIMARY KEY (current_order_id),
CONSTRAINT customer_id_fk1 FOREIGN KEY (customer_ID) 
	REFERENCES customer(customer_ID));

/* order_history entity table */
CREATE TABLE order_history
	(order_history_id BIGINT(12) NOT NULL,
	 customer_id BIGINT(11) NOT NULL,
	 order_history_status CHAR(1) NOT NULL,
	 order_history_purchase_date DATE NOT NULL,
	 order_history_approved_at DATE NOT NULL,
	 order_history_delivered_pickedup_carrier_date DATE NOT NULL,
	 order_history_delivered_returned_customer_date DATE NOT NULL,
CONSTRAINT order_history_id_pk PRIMARY KEY (order_history_id),
CONSTRAINT customer_id_fk2 FOREIGN KEY (customer_id) 
	REFERENCES customer(customer_id));

/* product entity table */
CREATE TABLE product
	(product_id INT(5) NOT NULL,
	 product_category_name VARCHAR(45) NOT NULL,
	 product_name VARCHAR(45) NOT NULL,
	 product_description VARCHAR(255) NOT NULL,
	 product_weight VARCHAR(10),
	 product_length_inch DECIMAL(6,2) NULL DEFAULT NULL,
	 product_height_inch DECIMAL(6,2) NULL DEFAULT NULL,
	 product_width_inch DECIMAL(6,2) NULL DEFAULT NULL,
CONSTRAINT product_id_pk PRIMARY KEY (product_id));

/* seller entity table */
CREATE TABLE seller
	(seller_id INT(8) NOT NULL AUTO_INCREMENT,
	 seller_zip_code INT(6) NOT NULL,
	 seller_city VARCHAR(45) NOT NULL,
	 seller_state CHAR(2) NOT NULL,
CONSTRAINT seller_id_pk PRIMARY KEY (seller_id));

/* order_item entity table */
CREATE TABLE order_item
	(order_item_id INT(6) NOT NULL AUTO_INCREMENT,
	 current_order_id BIGINT(12) NOT NULL,
	 product_id INT(5) NOT NULL,
	 seller_id INT(5) NOT NULL,
	 shipping_limit_date DATE NOT NULL,
	 price DECIMAL(6,2) NOT NULL,
CONSTRAINT order_item_id_pk PRIMARY KEY (order_item_id),
CONSTRAINT current_order_id_fk1 FOREIGN KEY (current_order_id) 
  	REFERENCES current_order(current_order_id),
CONSTRAINT product_id_fk1 FOREIGN KEY (product_id)
 	REFERENCES product(product_id),
CONSTRAINT seller_id_fk1 FOREIGN KEY (seller_id) 
	REFERENCES seller(seller_id));

/* order_review entity table */
CREATE TABLE order_review
	(review_id INT(4) NOT NULL,
	 review_order_id INT(6) NOT NULL,
	 review_product_id INT(5) NOT NULL,
	 review_score INT(1) NOT NULL,
	 review_comment_title VARCHAR(255) NULL DEFAULT NULL,
	 review_comment_message LONGTEXT NULL DEFAULT NULL,
	 review_creation_date DATE NOT NULL,
	 review_answer_timestamp DATE NULL DEFAULT NULL,
CONSTRAINT review_id_pk PRIMARY KEY (review_id),
CONSTRAINT review_order_id_fk FOREIGN KEY (review_order_id)
 	REFERENCES order_item(order_item_id),
CONSTRAINT review_product_id_fk FOREIGN KEY (review_product_id) 
	REFERENCES product(product_id));

/* payment entity table */
CREATE TABLE payment
	(current_order_id BIGINT(12) NOT NULL,
	 payment_sequential INT(1) NOT NULL,
	 payment_type VARCHAR(11) NOT NULL,
	 payment_value DECIMAL(6,2) NOT NULL,
	 payment_installments INT(1) NULL DEFAULT NULL,
	 payment_timestamp DATETIME NOT NULL,              
CONSTRAINT payment_id_pk PRIMARY KEY (current_order_id,payment_sequential));

/* login entity table */
CREATE TABLE login
	(login_id VARCHAR(45) NOT NULL,
	 customer_id BIGINT(11) NOT NULL,
	 login_password VARCHAR(16) NOT NULL,
CONSTRAINT login_id_pk PRIMARY KEY (login_id));

/* user_session entity table */
CREATE TABLE user_session
	(session_number BIGINT(12) NOT NULL AUTO_INCREMENT,
	 customer_id BIGINT(11) NOT NULL,
	 session_clicks INT(3) NOT NULL,
	 session_start_timestamp DATETIME NOT NULL,
	 session_end_timestamp DATETIME NOT NULL,
CONSTRAINT session_number_pk PRIMARY KEY (session_number),
CONSTRAINT customer_id_fk3 FOREIGN KEY (customer_id) 
	REFERENCES customer(customer_id));

/* Run specific command to display table structure in DB    */
describe customer;
describe seller;
describe login;
describe product;
describe order_item;
describe current_order;
describe payment;
describe order_history;
describe user_session;
describe order_review;
