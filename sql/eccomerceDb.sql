-- E-Commerce Database Schema
-- Create the database
CREATE DATABASE IF NOT EXISTS EccomerceDB;
USE EccomerceDB;
-- 1. brand
CREATE TABLE brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

INSERT INTO brand (name, description) VALUES
('Addidas', 'Sportswear and athletic shoes'),
('Apple', 'Consumer electronics and software');

-- 2. product_category
CREATE TABLE product_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(200) NOT NULL,
    description TEXT
);

INSERT INTO product_category (category_name, description) VALUES
('Clothing', 'Apparel and garments'),
('Electronics', 'Electronic gadgets and devices');

-- 3. product
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    brand_id INT,
    category_id INT,
    price DECIMAL(10,2),
    description TEXT,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

INSERT INTO product (name, brand_id, category_id, price, description) VALUES
('iPhone 16', 2, 2, 799.99, 'Latest Apple smartphone'),
('Nike Air Max', 1, 1, 120.00, 'Comfortable athletic shoes');

-- 4. product_image
CREATE TABLE product_image (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    image_url VARCHAR(255) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

INSERT INTO product_image (product_id, image_url) VALUES
(1, 'images/iphone14.jpg'),
(2, 'images/nike_air_max.jpg');

-- 5. product_item
CREATE TABLE product_item (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    sku VARCHAR(100),
    stock_quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

INSERT INTO product_item (product_id, sku, stock_quantity, price) VALUES
(1, 'IPH14-BLK-64', 50, 799.99),
(2, 'NKAM-BLU-42', 100, 120.00);

-- 6. color
CREATE TABLE color (
    color_id INT AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(50),
    hex_code VARCHAR(7)
);

INSERT INTO color (color_name, hex_code) VALUES
('Black', '#000000'),
('Blue', '#0000FF');

-- 7. size_category
CREATE TABLE size_category (
    size_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

INSERT INTO size_category (category_name) VALUES
('Clothing Sizes'),
('Shoe Sizes');

-- 8. size_option
CREATE TABLE size_option (
    size_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_id INT,
    label VARCHAR(10),
    value DECIMAL(5,2),
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

INSERT INTO size_option (size_category_id, label, value) VALUES
(2, '42', 42),
(1, 'M', NULL);

-- 9. product_variation
CREATE TABLE product_variation (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT,
    color_id INT,
    size_id INT,
    FOREIGN KEY (item_id) REFERENCES product_item(item_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id)
);

INSERT INTO product_variation (item_id, color_id, size_id) VALUES
(1, 1, 2),
(2, 2, 1);

-- 10. attribute_category
CREATE TABLE attribute_category (
    attribute_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100)
);

INSERT INTO attribute_category (category_name) VALUES
('Physical'),
('Technical');

-- 11. attribute_type
CREATE TABLE attribute_type (
    attribute_type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50)
);

INSERT INTO attribute_type (type_name) VALUES
('Text'),
('Number'),
('Boolean');

-- 12. product_attribute
CREATE TABLE product_attribute (
    attribute_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    attribute_category_id INT,
    attribute_type_id INT,
    name VARCHAR(100),
    value VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
);

INSERT INTO product_attribute (product_id, attribute_category_id, attribute_type_id, name, value) VALUES
(1, 2, 1, 'Processor', 'A16 Bionic'),
(2, 1, 2, 'Weight', '0.75');
