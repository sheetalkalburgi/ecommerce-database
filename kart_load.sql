use kart;

/* SQL script loads review data into the seller table*/
INSERT INTO seller (seller_id, seller_zip_code, seller_city, seller_state)
VALUES (2001,	90209,	'Beverly Hills','CA');
 
INSERT INTO seller (seller_id, seller_zip_code, seller_city, seller_state)
VALUES (2002,	94924,	'Market Street','CA');
 
INSERT INTO seller (seller_id, seller_zip_code, seller_city, seller_state)
VALUES (2003,	75050,	'Dublin','TX');
 
INSERT INTO seller (seller_id, seller_zip_code, seller_city, seller_state)
VALUES (2004,	60617,	'Milpitas','IL');
 
INSERT INTO seller (seller_id, seller_zip_code, seller_city, seller_state)
VALUES (2005,	10021,	'Saratoga','NY');

/* SQL script loads review data into the login table*/
INSERT INTO login (login_id, customer_id, login_password)
VALUES ('beverlyhillscoolcat@aol.com', 1, 'B?bEgs69');

INSERT INTO login (login_id, customer_id, login_password)
VALUES ('noah924henry@hotmail.com',	2, 'yuRkE3#Z');

INSERT INTO login (login_id, customer_id, login_password)
VALUES ('jaconcharlie123@gmail.com', 3, 'LX4MV*aA');

INSERT INTO login (login_id, customer_id, login_password)
VALUES ('swiftdanielle99@gmail.com', 4, 'q9=DDrxn');

INSERT INTO login (login_id, customer_id, login_password)
VALUES ('believergavin@aol.com', 5, '3y=KvR8Q');

INSERT INTO login (login_id, customer_id, login_password)
VALUES ('gagaohlala@gmail.com',	6, 'T67+wkJX');

INSERT INTO login (login_id, customer_id, login_password)
VALUES ('josh.brown@hotmail.com', 7, 'Vrw_mD9S');

INSERT INTO login (login_id, customer_id, login_password)
VALUES ('blackivy51@gmail.com',	8, '#KM5Wfyz');

INSERT INTO login (login_id, customer_id, login_password)
VALUES ('alice.in.wonderland@hotmail.com', 9, 'k%_%xN3J');

INSERT INTO login (login_id, customer_id, login_password)
VALUES ('bobthebuilder@gmail.com', 10, 'B?bEgs69');

/* SQL script loads review data into the user_session table*/
INSERT INTO user_session (session_number, customer_id, session_clicks, start_timestamp, end_timestamp)
VALUES (5001,	7,	34,'2020-03-17 18:27:00','2020-03-17 18:34:00');
 
INSERT INTO user_session (session_number, customer_id, session_clicks, start_timestamp, end_timestamp)
VALUES (5002,	1,	23,'2020-03-20 19:53:00','2020-03-20 19:59:00');

INSERT INTO user_session (session_number, customer_id, session_clicks, start_timestamp, end_timestamp)
VALUES (5003,	3,	21,'2020-03-21 20:35:00','2020-03-21 20:43:00');

INSERT INTO user_session (session_number, customer_id, session_clicks, start_timestamp, end_timestamp)
VALUES (5004,	4,	5,'2020-03-24 22:32:00','2020-03-24 22:35:00');

INSERT INTO user_session (session_number, customer_id, session_clicks, start_timestamp, end_timestamp)
VALUES (5005,	1,	32,'2020-03-25 23:40:00','2020-03-25 23:57:00');

INSERT INTO user_session (session_number, customer_id, session_clicks, start_timestamp, end_timestamp)
VALUES (5006,	2,	55,'2020-04-03 20:20:00','2020-04-03 20:50:00');

INSERT INTO user_session (session_number, customer_id, session_clicks, start_timestamp, end_timestamp)
VALUES (5007,	6,	23,'2020-04-08 09:20:00','2020-04-08 09:30:00');

INSERT INTO user_session (session_number, customer_id, session_clicks, start_timestamp, end_timestamp)
VALUES (5008,	8,	12,'2020-04-11 22:45:00','2020-04-11 22:51:00');
 
INSERT INTO user_session (session_number, customer_id, session_clicks, start_timestamp, end_timestamp)
VALUES (5009,	10,	43,'2020-04-12 13:20:00','2020-04-12 13:37:00');

INSERT INTO user_session (session_number, customer_id, session_clicks, start_timestamp, end_timestamp)
VALUES (5010,	5,	23,'2020-04-21 21:11:00','2020-04-21 21:21:00');

INSERT INTO user_session (session_number, customer_id, session_clicks, start_timestamp, end_timestamp)
VALUES (5011,	7,	45,'2020-05-03 20:07:00','2020-05-03 20:30:00');

INSERT INTO user_session (session_number, customer_id, session_clicks, start_timestamp, end_timestamp)
VALUES (5012,	1,	23,'2020-05-03 12:15:00','2020-05-03 12:27:00');

INSERT INTO user_session (session_number, customer_id, session_clicks, start_timestamp, end_timestamp)
VALUES (5013,	3,	21,'2020-05-04 14:20:00','2020-05-04 14:31:00');

INSERT INTO user_session (session_number, customer_id, session_clicks, start_timestamp, end_timestamp)
VALUES (5014,	4,	12,'2020-05-07 17:20:00','2020-05-07 17:27:00');
 

/* SQL script loads review data into the customer table*/
INSERT INTO customer (customer_id, customer_firstname, customer_lastname,customer_city,customer_zip_code,customer_state)
VALUES (1,'Michael', 'Fenty','100 Brighton Ave','Beverly Hills',90209,'CA');

INSERT INTO customer (customer_id, customer_firstname, customer_lastname,customer_city,customer_zip_code,customer_state)
VALUES (2,'Henry', 'Noah','285 Cherry Rd - 63 Altura Ave','Market Street',94924,'CA');

INSERT INTO customer (customer_id, customer_firstname, customer_lastname,customer_city,customer_zip_code,customer_state)
VALUES (3,'Charlie', 'Jacob','64 Altura Ave - 9 Hillside Ave','Clearlake',94020,'CA');

INSERT INTO customer (customer_id, customer_firstname, customer_lastname,customer_city,customer_zip_code,customer_state)
VALUES (4,'Danielle', 'Swift','951 Owlswood Ln - 9 W Shore Rd','Coronado',75011,'TX');

INSERT INTO customer (customer_id, customer_firstname, customer_lastname,customer_city,customer_zip_code,customer_state)
VALUES (5,'Gavin', 'Bieber','335 Golden Gate Ave - 3 East Ter','Dublin',75050,'TX');

INSERT INTO customer (customer_id, customer_firstname, customer_lastname,customer_city,customer_zip_code,customer_state)
VALUES (6,'Fiona', 'Gaga','88 Murray Ave - 9 Terrace Ave','Los Altos',60007,'IL');

INSERT INTO customer (customer_id, customer_firstname, customer_lastname,customer_city,customer_zip_code,customer_state)
VALUES (7,'Joshua', 'Brown','96 Vision Rd - 9 Upper Robert Dr','Milpitas',60617,'IL');

INSERT INTO customer (customer_id, customer_firstname, customer_lastname,customer_city,customer_zip_code,customer_state)
VALUES (8,'Ivy', 'Mars','161 Vallejo Ave - 420 Aberdeen Way','Palo Alto',60610,'IL');

INSERT INTO customer (customer_id, customer_firstname, customer_lastname,customer_city,customer_zip_code,customer_state)
VALUES (9,'Alice', 'Lopez','34 Broadmoor Ave - 3 Cypress Rd','Roseville',10001,'NY');

INSERT INTO customer (customer_id, customer_firstname, customer_lastname,customer_city,customer_zip_code,customer_state)
VALUES (10,'Bob', 'Parry','69 Angela Ave - 7 Beverly','Saratoga',10021,'NY');

/* SQL script loads review data into the order_review table*/
INSERT INTO order_review (review_id, review_order_id, review_product_id, review_score, 
					 review_comment_title, review_comment_message,
                     review_creation_date,review_answer_timestamp)
 VALUES (4001,	3001,	1020,	5, 'The World\'s First Lady',
'Michelle Obama is my voice, a voice that may never be heard with thoughts, feelings and experiences similar to mine yet they don’t matter until now. Thank you Mrs. Obama! ',
'2020-01-11',null);
 
INSERT INTO order_review(review_id, review_order_id, review_product_id, review_score, 
					 review_comment_title, review_comment_message,review_creation_date,review_answer_timestamp)
 VALUES (4002,	3005,	1020,	5,	'An Amazing Book!!',
' A window into her life so far, Michelle Obama gives us endearing, insightful, honest memories. From growing up in a working class household in Chicago, to leaving the White House residence, her story is unique and thought provoking. ',
'2020-02-10',null);

INSERT INTO order_review(review_id, review_order_id, review_product_id, review_score, 
					 review_comment_title, review_comment_message,review_creation_date,review_answer_timestamp)
 VALUES (4003,	3006,	1014,	5,	'Good',
' The instructions are pretty decent. However, I did have a few problems. ',
'2020-02-28',null);

INSERT INTO order_review(review_id, review_order_id, review_product_id, review_score, 
					 review_comment_title, review_comment_message,review_creation_date,review_answer_timestamp)
 VALUES (4004,	3013,	1020,	5,	'Wonderful',
' I read a lot of negative reviews, but I don’t understand why. I enjoyed reading her story from her perspective.',
'2020-03-23',null);

INSERT INTO order_review(review_id, review_order_id, review_product_id, review_score, 
					 review_comment_title, review_comment_message,review_creation_date,review_answer_timestamp)
 VALUES (4005,	3012,	1018,	5,	'PERFECT!!!',
'Perfect for my 3rd grader with first time in painting! Love the canvas mateial too!',
'2020-03-30',null);

INSERT INTO order_review(review_id, review_order_id, review_product_id, review_score, 
					 review_comment_title, review_comment_message,review_creation_date,review_answer_timestamp)
 VALUES (4006,	3024,	1020,	5,	'Great Read!!',
'This book is everything I hoped it would be. She tells her story so beautifully.',
'2020-03-31',null);

INSERT INTO order_review(review_id, review_order_id, review_product_id, review_score, 
					 review_comment_title, review_comment_message,review_creation_date,review_answer_timestamp)
 VALUES (4007,	3032,	1001,	5,	'Cleans & smells great',
'Smells good and just works for me.',
'2020-04-27',null);

INSERT INTO order_review(review_id, review_order_id, review_product_id, review_score, 
					 review_comment_title, review_comment_message,review_creation_date,review_answer_timestamp)
 VALUES (4008,	3019,	1001,	4,	'Makes hair soft', 'Good Shampoo', '2020-04-27',null);