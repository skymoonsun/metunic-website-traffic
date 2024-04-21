-- Create the database if not exists
CREATE DATABASE IF NOT EXISTS website_traffic_db;

-- Use the database
USE website_traffic_db;

-- Create the users table
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    user_type VARCHAR(50)
    );

-- Create the traffic table
CREATE TABLE IF NOT EXISTS traffic (
    user_id INT,
    visited_on DATE,
    time_spent INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
    );

-- Insert mock data into the users table
INSERT INTO users (id, name, user_type) VALUES
    (1, 'Matt', 'user'),
    (2, 'John', 'user'),
    (3, 'Louis', 'admin');

-- Insert mock data into the traffic table
INSERT INTO traffic (user_id, visited_on, time_spent) VALUES
    (1, '2019-05-01', 15),
    (2, '2019-05-02', 20),
    (2, '2019-05-03', 10);