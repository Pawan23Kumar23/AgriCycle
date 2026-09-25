CREATE DATABASE IF NOT EXISTS agricycle_db;
USE agricycle_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    role VARCHAR(30) NOT NULL
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
    quantity DECIMAL(10,2),
    required_price DECIMAL(10,2),
    location VARCHAR(150),
    status VARCHAR(30) DEFAULT 'Open',
    FOREIGN KEY (buyer_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS purchase_requests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    buyer_id INT,
    produce_id INT,
    quantity DECIMAL(10,2),
    offered_price DECIMAL(10,2),
    status VARCHAR(30) DEFAULT 'Pending',
    request_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (buyer_id) REFERENCES users(id),
    FOREIGN KEY (produce_id) REFERENCES produce(id)
);