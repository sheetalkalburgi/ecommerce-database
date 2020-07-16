# Data schema creation in MySQL workbench

## 1. Create Tables in Database

The first step in building a database is creating a data schema containing the various entities and attributes. As mentioned before, there are 10 entities (tables) used for database management of ‘Kart’. To build the database, these entity tables should be created individually and the relationship between the tables has to be established as per the ERD using the primary keys and foreign keys.

The ERD lays outs the relationship rules between the tables. For example, ‘order_item’ entity has a relationship with ‘current_order’, ‘product’ and ‘seller’. Hence, it is essential to create the parent tables first and go about creating the tables with dependencies. 

Keeping this in mind, independent entity tables such as ‘customer’, ‘seller’, ‘product’, ‘payment’ and ‘login’ are created first followed by the dependent tables such as ‘order_item’, ‘order_review’, ‘user_session’, ‘current_order’ and ‘order_history’.

To build the tables, a space or a schema is required. Hence, the initial step is to build the schema namely ‘kart’, using the below create SQL command: **CREATE SCHEMA kart;**

The entity tables can now be created in the schema using ‘kart’ where all the analysis will also take place. To create the tables using SQL commands, it is quintessential to mention the data types as well as the constraints for each attribute. 

Create queries are available here:

## 2. Load Data into the Tables

Once the entity tables are created, data has to be loaded into each of these entity tables. While loading data, similar to creating the tables, the order in which the data is loaded is important; first the independent tables have to be populated followed by dependent tables. There are multiple ways to load data into the tables and for the purpose of this project, two techniques are used: 
  1. Table Data Import Wizard: Import CSV files containing data rows into the respective tables.
  2. ‘insert’ SQL query: Insert data row by row into each of the columns.

To use the option of ‘Table Data Import Wizard’ in order to import CSV files, it is essential to maintain individual CSV files for each of the tables, and not in the form of multiple sheets in the same workbook. Another important point to keep in mind while importing the CSV files is to select the right column. There can be additional empty columns generated in the CSV which have to be unchecked. On the contrary, ‘insert’ SQL queries can also be used to populate the entity tables row by row.

Load queries are avaiable here:

Entity tables are available here:

## 3. Retrieve Information from Tables

Now that the entity tables are created and loaded with data, meaningful insights in compliance with the business rules can be obtained. Using a simple select query for each of the entity tables, lists all the data available in that table. A single entity by itself at times may not be sufficient to provide the whole picture. This calls for the need to join various entity tables using inner join, left join, unions, nested select queries etc.

## 4. Analysis using SQL

From the data in the database developed, many questions can be answered that can be vital in making important business decisions for Kart. SQL queries used for the below analysis are available here:

### What is the total revenue for the month of May 2020 up until May 20, 2020?
Monthly revenue can be critical for business executives of Kart for making important decisions including looking at the products which are generating high income. Kart has to pay its employees, warehouse rent, warehouse maintenance, etc. Looking at the revenue for a particular month can help to determine how the coming month will look like for Kart. To find the revenue generated, the following steps can be applied: 
  1. union between ‘current_order’ and ‘order_history’ for May,2020
  2. determine ‘sum(price)’ from ‘order_item’ for the orders in the union table
In the month of May 2020, a net revenue of **$1069.40** was generated up until May 20, 2020.

### Which is the best-selling product on Kart?
Kart enlists a vast variety of products fulfilled by different sellers. Hence by looking at the products which are performing well, Kart executives can make a decision to bring in more products in the similar category. This is especially helpful in inventory management. To determine the best-selling product on kart, the following steps can be applied:
  1. join ‘product’ and ‘order_item’ tables
  2. group by on ‘product_id’
  3. order by in descending order to get the best-selling product
The best-selling product on Kart is the book **‘Becoming’**, a memoir of the former United States first lady.

### Which product is not receiving good reviews from customers?
At times, even though a certain product is selling well, there can be possibilities that the product is receiving a new negative comment from the customers. This can be due to multiple reasons such as late delivery, damages during delivery, not satisfied with the service, etc. Hence it is also important to look at the worst rating and the corresponding reason why. To determine which product is not receiving good reviews from customer, the following steps can be done:
  1. join ‘product’ and ‘order_review’
  2. group by on ‘review_score’
  3. order by in ascending order to get the least rating
At Kart, the product which is not receiving good reviews from customers is **L’Oréal Shampoo**. This paves the way for more analysis enabling the business executives to look into the issue and determine the root cause for the product’s low performance and resolve the issue.

### What is the shopping history for customer_id = 4?
By knowing the shopping history of a customer and what they usually tend to order, Personalized Product Suggestions can be provided to the customer. In other words, by knowing the shopping history, not only is it possible to predict what the same customer will buy in the future (detect purchase pattern) but also make personalized suggestions for the customer. To determine the shopping history, the following steps can be applied:
  1. inner join ‘order_item’ with ‘product’
  2. inner join ‘order_history’ with ‘order_item’
  3. filter for customer_id = 4
The customer bearing the id = 4, had a history of purchasing household items/self-improvement products. Hence, this customer can be recommended for other products like other grooming products, batteries of wireless mouse etc.

### What is the average user engagement per minute on Kart website?
User engagement is highly correlated with overall profitability. User engagement is a finite resource and if users choose to spend their time on Kart, they’re signaling that they find value in it. This allows the business to make money from the product or service with ads, subscriptions, or sales. Highly engaged users are more likely to buy, return, and share the product or service with friends. By improving engagement, teams can improve the product’s profitability. To calculate the average time spent on the website using the formula:
                                  **[sum(end timestamp - start timestamp)/60]/[total number of sessions]**
On an average Kart customer spends approximately **20 minutes** on the website. 
             




