
DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
	id INT(100) NOT NULL AUTO_INCREMENT,
    productname VARCHAR(100) NOT NULL,
    deptName VARCHAR(100) NOT NULL,
    price DECIMAL(10, 4) NOT NULL,
    stockOnHand INT(100),
    PRIMARY KEY (id)
);

USE bamazon;

INSERT INTO products (productname, deptName, price, stockOnHand) VALUES ('Lenovo ThinkPad Computer', 'Electronics', 1050.99, 6);

INSERT INTO products (productname, deptName, price, stockOnHand) VALUES ('Maverick 88 Shotgun', 'Outdoors', 199.99, 8);

INSERT INTO products (productname, deptName, price, stockOnHand) VALUES ('G19 Handgun', 'Outdoors', 349.00, 4);

INSERT INTO products (productname, deptName, price, stockOnHand) VALUES ('YAESU FT857D Ham Radio ', 'Electronics', 749.99, 2);

INSERT INTO products (productname, deptName, price, stockOnHand) VALUES ('BCM AR lower', 'Outdoors', 99.99, 11);

INSERT INTO products (productname, deptName, price, stockOnHand) VALUES ('5.56 ammo', 'Outdoors', 5.49, 236);

INSERT INTO products (productname, deptName, price, stockOnHand) VALUES ('Tent', 'Outdoors', 149.99, 2);

INSERT INTO products (productname, deptName, price, stockOnHand) VALUES ('Muck Boots', 'Apparel', 99.99, 8);

INSERT INTO products (productname, deptName, price, stockOnHand) VALUES ('Outdoor Jacket', 'Apparel', 74.99, 4);

INSERT INTO products (productname, deptName, price, stockOnHand) VALUES ('5.11 Pants', 'Apparel', 59.99, 5);

SELECT * FROM products;

