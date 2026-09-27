CREATE DATABASE IF NOT EXISTS agricycle_db;
USE agricycle_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS produce (
    id INT AUTO_INCREMENT PRIMARY KEY,
    farmer_id INT,
    crop_name VARCHAR(100) NOT NULL,
    quantity DECIMAL(10,2),
    `condition` VARCHAR(50),
    price DECIMAL(10,2),
    location VARCHAR(150),
    FOREIGN KEY (farmer_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS buyer_requirements (
    id INT AUTO_INCREMENT PRIMARY KEY,
    buyer_id INT,
    crop_name VARCHAR(100) NOT NULL,
    min_qty DECIMAL(10,2),
    max_qty DECIMAL(10,2),
    target_price DECIMAL(10,2),
    FOREIGN KEY (buyer_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS purchase_requests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produce_id INT,
    buyer_id INT,
    status VARCHAR(30),
    FOREIGN KEY (produce_id) REFERENCES produce(id),
    FOREIGN KEY (buyer_id) REFERENCES users(id)
);

INSERT INTO users (name, email, password, role) VALUES
('Rahul Farmer', 'rahul@example.com', '1234', 'farmer'),
('Amit Buyer', 'amit@example.com', '1234', 'buyer'),
('Suman Farmer', 'suman@example.com', '1234', 'farmer');

INSERT INTO produce
(farmer_id, crop_name, quantity, `condition`, price, location) VALUES
(1, 'Rice', 100, 'Good', 40, 'Kolkata'),
(1, 'Potato', 200, 'Off-grade', 20, 'Egra'),
(3, 'Tomato', 150, 'Over-ripe', 15, 'Midnapore');