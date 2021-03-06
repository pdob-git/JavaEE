CREATE DATABASE budget CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci;
USE budget;

CREATE TABLE budget_item (
	id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL,
    value DECIMAL(10,2) NOT NULL,
    type ENUM('INCOME', 'EXPENSE') NOT NULL
);
