--
-- To use this file do either of:
-- - copy/paste all the following code into the mysql client (in terminal)
-- - $ cat schema.sql | mysql -u root
--

DROP DATABASE IF EXISTS pos;
CREATE DATABASE pos;
USE pos;

--
-- Create database tables
--
CREATE TABLE customer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(255),
    gender VARCHAR(50),
    customer_since DATE
);

CREATE TABLE item (
    id INT auto_increment primary key,
    name VARCHAR(100),
    price DECIMAL(7,2)
);

CREATE TABLE invoice (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    created_at TIMESTAMP
);

CREATE TABLE invoice_item (
  invoice_id int NOT NULL,
  item_id int NOT NULL,
  quantity int DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`item_id`)
);

--
-- Insert sample data
--
--

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Kat', 'Jacobs', 'k@jacobs.com', 'female', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Mark', 'Ackerman', 'mark@yahoo.com', 'male', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Jack', 'Brasher', 'jackbrash@hotmail.com', 'male', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('George', 'Curtis', 'gcurtis@yahoo.com', 'male', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Audrey', 'Hunter', 'ahunt87@hotmail.com', 'female', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Emily', 'Seaver', 'emseaver@test.com', 'female', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Madilyn', 'Reynolds', 'maddie@hotmail.com', 'female', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Nathan', 'Cooper', 'natecoop@gmail.com', 'male', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Karen', 'Tanner', 'ktanns@gmail.com', 'female', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Corey', 'Wilson', 'cocowils@gmail.com', 'male', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Amy', 'Johnson', 'ajgirl39@yahoo.com', 'female', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Tracey', 'Covington', 'tcove78@yahoo.com', 'female', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Alex', 'Tipton', 'atipto32@hotmail.com', 'male', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Hannah', 'Vincent', 'hvhiker@yahoo.com', 'female', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Connie', 'Maxwell', 'maxcon342@yahoo.com', 'female', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Ryan', 'Underwood', 'ryguy34@hotmail.com', 'male', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Jerome', 'Goodwell', 'jergood@gmail.com', 'male', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Adam', 'Johnson', 'adjoh98@hotmail.com', 'male', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Sandy', 'Walters', 'sandwalt29@gmail.com', 'female', CURDATE());

INSERT INTO customer (first_name, last_name, email, gender, customer_since)
    VALUES ('Brittney', 'Smith', 'britsmit78@cox.net', 'female', CURDATE());

--
-- Insert data into item table
--
INSERT INTO item (name, price) VALUES ('hammer', 17.95);

INSERT INTO item (name, price) VALUES ('screws', 3.95);

INSERT INTO item (name, price) VALUES ('drill', 67.95);

INSERT INTO item (name, price) VALUES ('saw', 37.99);

INSERT INTO item (name, price) VALUES ('wrench', 7.95);

INSERT INTO item (name, price) VALUES ('ladder', 77.99);

INSERT INTO item (name, price) VALUES ('shovel', 27.95);

INSERT INTO item (name, price) VALUES ('pry bar', 19.97);

INSERT INTO item (name, price) VALUES ('chisel', 10.46);

INSERT INTO item (name, price) VALUES ('voltage tester', 18.97);

INSERT INTO item (name, price) VALUES ('laser level', 49.97);

--
-- Insert data into invoice table
--

INSERT INTO invoice (customer_id, created_at) VALUES (1, NOW());

--
-- Insert data into invoice_item table
--

INSERT INTO invoice_item (invoice_id, item_id, quantity) VALUES (1, 1, 13);

