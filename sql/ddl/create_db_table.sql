DROP DATABASE IF EXISTS social_network;

CREATE DATABASE social_network CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci;
USE social_network;

CREATE TABLE user (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(30) NOT NULL,
    age INT,
    city VARCHAR(30)
);

-- DROP TABLE IF EXISTS user;

-- DROP DATABASE IF EXISTS social_network;